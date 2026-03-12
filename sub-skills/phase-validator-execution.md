# Sub-Skill: Phase Validator Execution (E167 Phase 2)

**Version:** 1.0  
**Load:** On phase transition attempt  
**Trigger:** User or AI attempts to move between phases  
**Purpose:** Execute gate checks with auto-remediation

---

## Execution Flow

```python
def execute_gate_transition(current_phase, next_phase, context):
    """
    Execute gate verification with auto-remediation.
    Returns: {status: PASS|FAIL|REMEDIATED, report: {}, action: str}
    """
    
    # 1. Load gate configuration
    gate_config = load_gate_config(f"{current_phase}_{next_phase}")
    
    # 2. Execute each requirement
    results = []
    for req in gate_config.requirements:
        result = check_requirement(req, context)
        
        if result.status == "FAIL" and req.auto_remediate:
            # Attempt auto-remediation
            remediation = attempt_auto_remediation(req, context)
            result.remediation_attempted = True
            result.remediation_successful = remediation.success
            
            if remediation.success:
                result.status = "REMEDIATED"
                result.evidence = remediation.evidence
        
        results.append(result)
    
    # 3. Determine overall status
    failed = [r for r in results if r.status == "FAIL"]
    remediated = [r for r in results if r.status == "REMEDIATED"]
    
    if failed:
        return {
            "status": "FAIL",
            "results": results,
            "action": "BLOCK",
            "failures": failed
        }
    elif remediated:
        return {
            "status": "REMEDIATED",
            "results": results,
            "action": "PROCEED",
            "remediated_items": remediated
        }
    else:
        return {
            "status": "PASS",
            "results": results,
            "action": "PROCEED"
        }
```

---

## Auto-Remediation Functions

### REM-001: Create Missing CR

**Trigger:** REQ-002 fails (CR not found)

```python
def auto_create_cr(context):
    """
    Creates CR retroactively for current session.
    """
    cr_id = get_next_cr_number()
    cr_file = f"enhancements/change/CR{cr_id}_{context.topic}.md"
    
    content = f"""# Change Request #{cr_id}: {context.topic}

**Status:** ACTIVE  
**Created:** {now()} (retroactive)  
**Type:** {context.type}

## Initial Request

**User [{context.start_time}]:**
> {context.first_prompt}

**Context:**
- Working directory: {context.working_dir}
- Auto-created during gate transition

## Retroactive Log

This CR was created retroactively during {context.gate_transition} gate execution.

"""
    
    write_file(cr_file, content)
    return {
        "success": True,
        "evidence": f"Created {cr_file}",
        "cr_id": cr_id
    }
```

### REM-002: Run Syntax Check

**Trigger:** REQ-020 fails (syntax errors)

```python
def auto_run_syntax_check(files):
    """
    Runs syntax validation on deliverables.
    """
    results = []
    for file in files:
        if file.endswith('.py'):
            result = subprocess.run(
                ['python', '-m', 'py_compile', file],
                capture_output=True
            )
            results.append({
                'file': file,
                'valid': result.returncode == 0,
                'error': result.stderr if result.returncode != 0 else None
            })
        elif file.endswith('.js'):
            result = subprocess.run(
                ['node', '--check', file],
                capture_output=True
            )
            results.append({
                'file': file,
                'valid': result.returncode == 0,
                'error': result.stderr if result.returncode != 0 else None
            })
    
    all_valid = all(r['valid'] for r in results)
    return {
        "success": all_valid,
        "evidence": f"Syntax check: {sum(r['valid'] for r in results)}/{len(results)} passed",
        "details": results
    }
```

### REM-003: Create Evidence Directory

**Trigger:** REQ-022 fails (evidence/ missing)

```python
def auto_create_evidence_dir():
    """
    Creates evidence directory structure.
    """
    evidence_dir = "evidence"
    
    if not os.path.exists(evidence_dir):
        os.makedirs(evidence_dir)
        
        # Create README
        readme = f"""# Evidence Package

**Created:** {now()} (auto-remediation)

This directory contains verification artifacts for the build.

## Contents

- [ ] Test results
- [ ] Screenshots (if applicable)
- [ ] Log files
- [ ] Verification reports

"""
        write_file(f"{evidence_dir}/README.md", readme)
    
    return {
        "success": True,
        "evidence": f"Created {evidence_dir}/ directory"
    }
```

### REM-004: Add Resolution Section to CR

**Trigger:** REQ-032 fails (no resolution in CR)

```python
def auto_add_resolution_section(cr_file):
    """
    Adds resolution section to CR.
    """
    resolution = f"""

## Resolution

**Status:** IN_PROGRESS  
**Auto-created:** {now()}

Resolution section added during gate transition.

### Outstanding Items
- [ ] Complete work
- [ ] Final verification

"""
    
    append_to_file(cr_file, resolution)
    
    return {
        "success": True,
        "evidence": f"Added resolution section to {cr_file}"
    }
```

---

## Terminal Format Integration

### Gate Status Display

```
STATUS    Gate {gate_id} — {passed}/{total} PASS {remediated}/{total} AUTO-FIXED
ACTIVE    Validator — Verifying {current_requirement}
VERIFY    {check_list}
ALIGN     {status_message}

{gate_output_box}

OPTIONS   {options}
```

### Example: Successful with Auto-Remediation

```
STATUS    Gate D→D — 3/4 PASS 1 AUTO-FIXED
ACTIVE    Validator — Completing verification
VERIFY    REQ-001:✅ REQ-002:✅ REQ-003:✅ REQ-004:🔧
ALIGN     Gate passed with auto-remediation

┌─────────────────────────────────────────┐
│ GATE D→D: Discovery → Design Review     │
│                                         │
│ REQUIREMENTS.md: ✅                     │
│ CR created: ✅ (was missing, created)   │
│ Prompts logged: ✅                      │
│ Decision log: ✅                        │
│                                         │
│ AUTO-REMEDIATION: 1 item fixed          │
│ • Created CR165 retroactively           │
│                                         │
│ STATUS: ✅ PASS (with remediation)      │
│ Proceeding to Design Review...          │
└─────────────────────────────────────────┘

OPTIONS   proceed | review remediation | pause
```

### Example: Blocking Failure

```
STATUS    Gate B→V — 2/4 PASS 2 FAIL
ACTIVE    Validator — Build verification FAILED
VERIFY    REQ-020:❌ REQ-021:✅ REQ-022:❌ REQ-024:✅
ALIGN     Critical failures — transition BLOCKED

┌─────────────────────────────────────────┐
│ GATE B→V: Build → Validation            │
│                                         │
│ Syntax check: ❌ FAIL                   │
│   File: photo_renamer.py                │
│   Error: SyntaxError line 42            │
│                                         │
│ Evidence-First: ✅                      │
│                                         │
│ Verification: ❌ No evidence/ folder    │
│                                         │
│ Skip check: ✅                          │
│                                         │
│ STATUS: ❌ FAIL — BLOCKED               │
│                                         │
│ CRITICAL FAILURES (cannot override):    │
│ • REQ-020: Syntax errors must be fixed  │
│                                         │
│ FAILURES (can remediate):               │
│ • REQ-022: Run verification             │
│                                         │
│ OPTIONS:                                │
│ [F]ix syntax errors                     │
│ [R]un verification                      │
│ [A]bort to Build                        │
└─────────────────────────────────────────┘
```

---

## Integration Points

### Hook into Discovery→Design

```python
# In phase-discovery.md

class DiscoveryPhase:
    def complete(self):
        # Discovery work done
        
        # EXECUTE GATE D→D
        gate_result = execute_gate_transition(
            "Discovery", "Design", self.context
        )
        
        if gate_result.status in ["PASS", "REMEDIATED"]:
            return self.present_design_review_gate()
        else:
            return self.show_gate_failure(gate_result)
```

### Hook into Build→Validation

```python
# In phase-build.md

class BuildPhase:
    def complete(self):
        # Build work done
        
        # EXECUTE GATE B→V (BLOCKING)
        gate_result = execute_gate_transition(
            "Build", "Validation", self.context
        )
        
        if gate_result.status == "FAIL":
            if any(r.critical for r in gate_result.failures):
                return self.force_back_to_build(gate_result)
            else:
                return self.offer_override(gate_result)
        elif gate_result.status == "REMEDIATED":
            return self.show_remediation_summary(gate_result)
        else:
            return self.proceed_to_validation()
```

---

## Configuration

Auto-remediation enabled per requirement in `gate-requirements.yaml`:

```yaml
requirements:
  - id: "REQ-002"
    auto_remediate: true
    remediation_function: "auto_create_cr"
    
  - id: "REQ-020"
    auto_remediate: true
    remediation_function: "auto_run_syntax_check"
    
  - id: "REQ-022"
    auto_remediate: true
    remediation_function: "auto_create_evidence_dir"
```

---

**End Phase Validator Execution**
