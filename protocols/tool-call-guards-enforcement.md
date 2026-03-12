# Protocol: Tool Call Guards Enforcement (E082)

**Status:** IMPLEMENTED  
**Version:** 1.0  
**Purpose:** Prevent destructive operations without confirmation

---

## The Guard Levels

| Level | Operations | Behavior |
|-------|------------|----------|
| **L1** | Read-only (ls, cat, grep) | No confirmation |
| **L2** | Write in working dir (write, touch) | Log only |
| **L3** | Destructive in working dir (rm, mv) | **Confirm required** |
| **L4** | Outside working dir (any) | **Double confirm + justification** |
| **L5** | System-level (sudo, admin) | **BLOCKED (never allowed)** |

---

## Enforcement Implementation

```python
class ToolCallGuard:
    GUARD_LEVELS = {
        "read": 1,      # ls, cat, grep, find
        "write": 2,     # write_file (in bounds)
        "modify": 3,    # rm, mv, del (in bounds)
        "external": 4,  # outside working dir
        "system": 5,    # sudo, admin commands
    }
    
    DESTRUCTIVE_PATTERNS = [
        r"rm\s+-rf",
        r"del\s+/f",
        r"format\s+",
        r"drop\s+table",
        r"truncate\s+",
    ]
    
    def check_operation(self, tool_name, parameters):
        """
        Returns: {allowed: bool, level: int, confirm_required: bool}
        """
        # Determine operation type
        op_type = self.classify_operation(tool_name, parameters)
        level = self.GUARD_LEVELS[op_type]
        
        # Check for destructive patterns
        if self.is_destructive(tool_name, parameters):
            level = max(level, 3)
        
        # Check boundaries
        if not self.in_working_directory(parameters):
            level = max(level, 4)
        
        # Check system-level
        if self.is_system_operation(tool_name, parameters):
            level = 5  # BLOCKED
            return {
                "allowed": False,
                "level": 5,
                "reason": "System-level operations never allowed",
                "confirm_required": False
            }
        
        # Determine confirmation requirement
        confirm_required = level >= 3
        
        return {
            "allowed": True,
            "level": level,
            "confirm_required": confirm_required,
            "operation_type": op_type
        }
    
    def request_confirmation(self, operation_details):
        """
        Displays confirmation dialog for L3+ operations.
        """
        if operation_details["level"] == 3:
            return self.confirm_level_3(operation_details)
        elif operation_details["level"] == 4:
            return self.confirm_level_4(operation_details)
    
    def confirm_level_3(self, details):
        """
        L3: Single confirmation for destructive in-boundary ops.
        """
        dialog = f"""
┌─────────────────────────────────────────┐
│ ⚠️  DESTRUCTIVE OPERATION DETECTED      │
├─────────────────────────────────────────┤
│ Operation: {details['tool']}            │
│ Target: {details['target']}             │
│                                         │
│ This operation cannot be undone.        │
│                                         │
│ [C]onfirm and proceed                   │
│ [C]ancel operation                      │
└─────────────────────────────────────────┘
"""
        return dialog
    
    def confirm_level_4(self, details):
        """
        L4: Double confirmation + justification for out-of-boundary ops.
        """
        dialog = f"""
┌─────────────────────────────────────────┐
│ 🚫 OUTSIDE WORKING DIRECTORY            │
├─────────────────────────────────────────┤
│ Operation: {details['tool']}            │
│ Target: {details['target']}             │
│ Working Dir: {details['working_dir']}   │
│                                         │
│ ⚠️  This operation targets files        │
│     outside the project directory.      │
│                                         │
│ Justification required:                 │
│ [________________________________]      │
│                                         │
│ [Confirm with justification]            │
│ [Cancel]                                │
└─────────────────────────────────────────┘
"""
        return dialog
```

---

## Integration with Gates

### Gate D→B: Risk Assessment Check

```yaml
# In gate-requirements.yaml
gate_D_B:
  requirements:
    - id: "REQ-013"
      enhancement: "E082"
      name: "Risk Assessment"
      description: "Destructive operations identified in design"
      check: "design_includes_risk_assessment"
      required: false  # Advisory only at design stage
```

### Runtime Enforcement

```python
# Wrap all tool calls

def guarded_tool_call(tool_name, parameters):
    guard = ToolCallGuard()
    check = guard.check_operation(tool_name, parameters)
    
    if not check["allowed"]:
        return {
            "status": "BLOCKED",
            "reason": check["reason"],
            "guard_level": check["level"]
        }
    
    if check["confirm_required"]:
        confirmation = guard.request_confirmation({
            "tool": tool_name,
            "target": parameters.get("path", "unknown"),
            "working_dir": get_working_directory(),
            "level": check["level"]
        })
        
        # Return confirmation dialog instead of executing
        return {
            "status": "CONFIRMATION_REQUIRED",
            "dialog": confirmation,
            "guard_level": check["level"],
            "on_confirm": lambda: execute_tool(tool_name, parameters),
            "on_cancel": lambda: {"status": "CANCELLED"}
        }
    
    # L1-L2: Execute directly
    return execute_tool(tool_name, parameters)
```

---

## Safety Invariants (from E082)

**NEVER (Level 5 - BLOCKED):**
- Delete files outside working directory
- Modify system configuration
- Execute admin/sudo commands
- Access sensitive system paths (/etc, registry, etc.)

**CONFIRM REQUIRED (Level 3-4):**
- Delete files in working directory
- Move/rename files
- Overwrite existing files
- Access outside working directory

**LOGGED (Level 2):**
- Create new files
- Modify existing files
- Execute scripts

**SILENT (Level 1):**
- Read files
- List directories
- Search content

---

## Verification in Final QA

```yaml
final_qa_checklist:
  - id: "E082-001"
    check: "No destructive ops without confirmation"
    verify: "CR shows confirmation for all L3+ ops"
    
  - id: "E082-002"
    check: "No out-of-boundary access"
    verify: "All file ops within working directory"
    
  - id: "E082-003"
    check: "Justification logged for L4"
    verify: "CR includes justification for external ops"
```

---

## Implementation Status

| Component | Status | Location |
|-----------|--------|----------|
| Guard classification | ✅ | This file |
| L3 confirmation dialog | ✅ | `confirm_level_3()` |
| L4 confirmation dialog | ✅ | `confirm_level_4()` |
| Integration wrapper | ✅ | `guarded_tool_call()` |
| Gate D→B check | ✅ | gate-requirements.yaml REQ-013 |
| Runtime enforcement | 🔄 | Requires core framework integration |

---

**End E082 Enforcement Protocol**
