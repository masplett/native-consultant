# Enhancement #168: Session Analysis and Recovery Protocol

**Status:** PROPOSED  
**Type:** Tooling/Reliability  
**Source:** Session 2417f9b1809f96b87b477732bf05be1e Analysis  
**Depends On:** E163 (CR-as-Memory)

---

## Problem Statement

### Observed Issues from Session Analysis

Review of session `2417f9b1809f96b87b477732bf05be1e` revealed several operational friction points:

1. **Shell Command Failures Due to Syntax Mismatch**
   - Multiple `Shell` tool calls failed because bash syntax was used in PowerShell
   - Examples: `&&`, `||`, `mkdir -p`, `head -100`
   - Impact: Wasted tokens, failed operations, manual retry required

2. **Character Encoding Issues**
   - Special characters (✅, →, —) rendered as `�o.`, `�?'`, `�+` in some contexts
   - Impact: Reduced readability, potential parsing issues

3. **No Automatic Session Recovery**
   - Sessions are logged but not analyzed for failures
   - No automatic detection of patterns that could be prevented
   - Missed opportunities for learning from errors

4. **Path Handling with Spaces**
   - Paths like `D:\Consultant review\...` require careful quoting
   - Inconsistent handling across tool calls

---

## Solution: Session Analysis and Recovery Protocol

### Component 1: Shell Syntax Adapter

**Auto-detect shell type and adapt commands:**

```python
class ShellSyntaxAdapter:
    SHELL_TYPES = {
        "powershell": "powershell.exe",
        "bash": "/bin/bash",
        "cmd": "cmd.exe"
    }
    
    TRANSLATIONS = {
        "powershell": {
            "mkdir -p": "New-Item -ItemType Directory -Force",
            "&&": "; if ($?) {",
            "||": "} else {",
            "head -N": "Select-Object -First N",
            "cat": "Get-Content",
            "ls": "Get-ChildItem",
            "rm -rf": "Remove-Item -Recurse -Force",
        },
        "bash": {
            # Bash is default, minimal translation needed
        }
    }
    
    def adapt_command(self, command, target_shell="powershell"):
        """
        Translate bash-style commands to target shell syntax.
        """
        translations = self.TRANSLATIONS.get(target_shell, {})
        adapted = command
        
        for bash_pattern, target_pattern in translations.items():
            adapted = adapted.replace(bash_pattern, target_pattern)
        
        return adapted
```

**Integration:**
```yaml
# In Shell tool configuration
auto_adapt_syntax: true
default_shell: "powershell"  # Auto-detected from OS
fallback_shell: "bash"        # For WSL/Unix environments
```

---

### Component 2: Character Encoding Guardian

**Ensure consistent UTF-8 encoding for special characters:**

```python
class EncodingGuardian:
    PROBLEMATIC_CHARS = {
        "→": "->",     # Arrow
        "—": "--",     # Em dash
        "✅": "[OK]",   # Checkmark
        "❌": "[X]",    # Cross
        "⚠️": "[!]",    # Warning
        "🎩": "[HAT]",  # Hat (consultancy symbol)
        "📋": "[DOC]",  # Document
        "🔥": "[FIRE]", # Fire/critical
    }
    
    def sanitize_for_context(self, text, target_encoding="utf-8"):
        """
        Ensure text is safe for target encoding context.
        """
        try:
            # Test if encoding works
            text.encode(target_encoding)
            return text  # No issues
        except UnicodeEncodeError:
            # Replace problematic characters
            sanitized = text
            for char, replacement in self.PROBLEMATIC_CHARS.items():
                sanitized = sanitized.replace(char, replacement)
            return sanitized
```

---

### Component 3: Session Failure Analyzer

**Automatically analyze session logs for patterns:**

```python
class SessionFailureAnalyzer:
    FAILURE_PATTERNS = {
        "shell_syntax_error": {
            "patterns": [
                r"The token '&&' is not a valid statement",
                r"The token '\|\|' is not a valid statement",
                r"The term '.*' is not recognized",
            ],
            "recommendation": "Use ShellSyntaxAdapter"
        },
        "path_not_found": {
            "patterns": [
                r"Cannot find path",
                r"does not exist",
            ],
            "recommendation": "Verify path exists or create it"
        },
        "permission_denied": {
            "patterns": [
                r"Access is denied",
                r"Permission denied",
            ],
            "recommendation": "Check file permissions or run as administrator"
        },
        "encoding_error": {
            "patterns": [
                r"�",  # Replacement character
            ],
            "recommendation": "Use EncodingGuardian"
        }
    }
    
    def analyze_session(self, session_file):
        """
        Analyze session for failure patterns and generate report.
        """
        failures = []
        
        with open(session_file, 'r') as f:
            content = f.read()
        
        for category, config in self.FAILURE_PATTERNS.items():
            for pattern in config["patterns"]:
                matches = re.findall(pattern, content)
                if matches:
                    failures.append({
                        "category": category,
                        "count": len(matches),
                        "recommendation": config["recommendation"]
                    })
        
        return {
            "total_failures": len(failures),
            "categories": failures,
            "improvement_suggestions": self.generate_suggestions(failures)
        }
```

---

### Component 4: Automatic Recovery Actions

**Based on failure analysis, suggest or auto-apply fixes:**

```python
class AutoRecovery:
    RECOVERY_ACTIONS = {
        "shell_syntax_error": {
            "detect": lambda error: "&&" in error or "||" in error,
            "recover": self.fix_shell_syntax,
            "auto_apply": False  # Requires confirmation
        },
        "missing_directory": {
            "detect": lambda error: "does not exist" in error,
            "recover": self.create_directory,
            "auto_apply": True  # Safe to auto-apply
        },
        "file_not_found": {
            "detect": lambda error: "Cannot find" in error,
            "recover": self.list_alternatives,
            "auto_apply": False
        }
    }
    
    def attempt_recovery(self, error, context):
        """
        Attempt to recover from known error patterns.
        """
        for action_name, action in self.RECOVERY_ACTIONS.items():
            if action["detect"](error):
                if action["auto_apply"]:
                    return action["recover"](context)
                else:
                    return {
                        "can_recover": True,
                        "action": action_name,
                        "requires_confirmation": True,
                        "suggestion": action["recover"](context, dry_run=True)
                    }
        
        return {"can_recover": False}
```

---

## Implementation

### Phase 1: Shell Syntax Adapter (Week 1)
- [ ] Implement `ShellSyntaxAdapter` class
- [ ] Add configuration to Shell tool
- [ ] Test with common bash→powershell translations
- [ ] Document supported translations

### Phase 2: Encoding Guardian (Week 1)
- [ ] Implement `EncodingGuardian` class
- [ ] Add to WriteFile tool pipeline
- [ ] Create character mapping configuration
- [ ] Test with special characters

### Phase 3: Session Analyzer (Week 2)
- [ ] Implement `SessionFailureAnalyzer`
- [ ] Create failure pattern database
- [ ] Add CLI command: `kimi analyze-session <session-id>`
- [ ] Generate human-readable reports

### Phase 4: Auto-Recovery (Week 3)
- [ ] Implement `AutoRecovery` class
- [ ] Define safe auto-apply actions
- [ ] Add confirmation prompts for risky actions
- [ ] Test recovery scenarios

---

## Usage Examples

### Example 1: Shell Syntax Adaptation

**Before (fails in PowerShell):**
```bash
mkdir -p "path/to/dir" && echo "Done"
```

**After (auto-adapted):**
```powershell
New-Item -ItemType Directory -Force -Path "path/to/dir"; if ($?) { echo "Done" }
```

### Example 2: Session Analysis

```bash
kimi analyze-session 2417f9b1809f96b87b477732bf05be1e
```

**Output:**
```
Session Analysis Report
=======================
Total Tool Calls: 47
Failed Calls: 8 (17%)

Failure Categories:
1. Shell Syntax Error (5 occurrences)
   - Pattern: bash syntax in PowerShell
   - Recommendation: Enable auto_adapt_syntax

2. Encoding Issues (2 occurrences)
   - Pattern: Special characters rendered incorrectly
   - Recommendation: Use EncodingGuardian

3. Path Errors (1 occurrence)
   - Pattern: Directory already exists
   - Recommendation: Use -Force flag

Improvement Suggestions:
- Enable shell syntax adaptation in config
- Use ASCII-safe characters for critical data
- Pre-check directory existence
```

### Example 3: Auto-Recovery

```python
# During session execution
Tool Call Failed: mkdir failed - directory exists
Auto-Recovery: Using -Force flag to ensure directory exists
Result: ✅ Recovered successfully
```

---

## Integration with E163 (CR-as-Memory)

When CR-as-memory is active:
- Failed commands are logged with full context
- Recovery attempts are appended to CR
- User preferences for "auto_recover" are respected

```yaml
# In user-preferences.yaml
preferences:
  - id: "pref_004"
    category: "automation_tolerance"
    pattern: "auto_recover_safe_only"
    principle: "Auto-recover from safe failures, confirm for risky ones"
```

---

## Success Metrics

- [ ] Reduce shell command failures by 80%
- [ ] Eliminate encoding issues in output files
- [ ] Provide actionable analysis for 90% of session failures
- [ ] Auto-recover from 50% of safe failures without user intervention

---

## Metadata

**Dependencies:** E163 (CR-as-Memory), Shell Tool, WriteFile Tool  
**Used In Phases:** All (runtime improvement)  
**Used In Domains:** All  
**Sub-Skills:** session-analysis, shell-adapter, encoding-guardian

---

## Resolution

**Status:** PROPOSED

### Next Steps
1. Review proposal
2. Prioritize Phase 1 implementation
3. Test with existing session logs

---

*End Enhancement #168*
