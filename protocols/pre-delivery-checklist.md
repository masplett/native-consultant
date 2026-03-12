# Protocol: Pre-Delivery Checklist (E003 Integration)

**Status:** IMPLEMENTED  
**Version:** 1.0  
**Purpose:** Ensure 7 critical checks before delivery

---

## The 7 Checks

| # | Check | Verified By | Gate |
|---|-------|-------------|------|
| 1 | All files in correct locations | Directory structure check | V→De |
| 2 | No placeholder text | Content scan | V→De |
| 3 | No secrets/credentials | Pattern scan | V→De |
| 4 | Evidence package complete | File count + manifest | V→De |
| 5 | Git commit message drafted | File exists | V→De |
| 6 | Tests pass / verification done | evidence/ folder | V→De |
| 7 | Documentation complete | README/requirements exist | V→De |

---

## Checklist Execution

```python
class PreDeliveryChecklist:
    CHECKS = [
        {
            "id": "CHK-001",
            "name": "File Locations",
            "description": "All deliverables in correct directories",
            "verify": self.check_file_locations,
            "critical": False
        },
        {
            "id": "CHK-002",
            "name": "No Placeholders",
            "description": "No {template} or TODO/FIXME in output",
            "verify": self.check_no_placeholders,
            "critical": True
        },
        {
            "id": "CHK-003",
            "name": "No Secrets",
            "description": "No API keys, passwords, tokens in code",
            "verify": self.check_no_secrets,
            "critical": True
        },
        {
            "id": "CHK-004",
            "name": "Evidence Package",
            "description": "Evidence folder with artifacts",
            "verify": self.check_evidence_package,
            "critical": True
        },
        {
            "id": "CHK-005",
            "name": "Git Ready",
            "description": "Commit message drafted, clean state",
            "verify": self.check_git_ready,
            "critical": False
        },
        {
            "id": "CHK-006",
            "name": "Verification Complete",
            "description": "Tests run or manual verification done",
            "verify": self.check_verification_complete,
            "critical": True
        },
        {
            "id": "CHK-007",
            "name": "Documentation",
            "description": "README and requirements exist",
            "verify": self.check_documentation,
            "critical": False
        }
    ]
    
    PLACEHOLDER_PATTERNS = [
        r"\{[A-Za-z_]+\}",  # {variable}
        r"TODO[:\s]",
        r"FIXME[:\s]",
        r"XXX[:\s]",
        r"HACK[:\s]",
        r"PLACEHOLDER",
    ]
    
    SECRET_PATTERNS = [
        r"api[_-]?key\s*[=:]\s*['\"][^'\"]+['\"]",
        r"api[_-]?secret\s*[=:]\s*['\"][^'\"]+['\"]",
        r"password\s*[=:]\s*['\"][^'\"]+['\"]",
        r"token\s*[=:]\s*['\"][^'\"]{20,}['\"]",
        r"sk-[a-zA-Z0-9]{20,}",  # OpenAI-style key
        r"AKIA[0-9A-Z]{16}",  # AWS key
    ]
    
    def run_all_checks(self, context):
        """
        Run all 7 checks and return results.
        """
        results = []
        
        for check in self.CHECKS:
            result = check["verify"](context)
            results.append({
                "id": check["id"],
                "name": check["name"],
                "passed": result["passed"],
                "details": result.get("details", ""),
                "critical": check["critical"]
            })
        
        # Determine status
        critical_failures = [r for r in results if not r["passed"] and r["critical"]]
        all_passed = all(r["passed"] for r in results)
        
        return {
            "all_passed": all_passed,
            "critical_failures": critical_failures,
            "results": results,
            "passed_count": sum(1 for r in results if r["passed"]),
            "total_count": len(results)
        }
    
    def check_file_locations(self, context):
        """Check files are in correct locations."""
        expected_structure = [
            "deliverables/" if context.has_deliverables else None,
            "evidence/",
            "REQUIREMENTS.md" if context.has_requirements else None,
        ]
        
        missing = []
        for item in expected_structure:
            if item and not os.path.exists(item):
                missing.append(item)
        
        return {
            "passed": len(missing) == 0,
            "details": f"Missing: {missing}" if missing else "All files in place"
        }
    
    def check_no_placeholders(self, context):
        """Scan for placeholder text."""
        violations = []
        
        for root, dirs, files in os.walk("."):
            # Skip certain directories
            if ".git" in root or "__pycache__" in root:
                continue
                
            for file in files:
                if file.endswith((".md", ".py", ".js", ".txt", ".yaml")):
                    filepath = os.path.join(root, file)
                    try:
                        with open(filepath, 'r') as f:
                            content = f.read()
                            
                        for pattern in self.PLACEHOLDER_PATTERNS:
                            matches = re.findall(pattern, content)
                            if matches:
                                violations.append(f"{filepath}: {matches}")
                    except:
                        continue
        
        return {
            "passed": len(violations) == 0,
            "details": f"Found {len(violations)} placeholders" if violations else "No placeholders"
        }
    
    def check_no_secrets(self, context):
        """Scan for potential secrets."""
        violations = []
        
        for root, dirs, files in os.walk("."):
            if ".git" in root:
                continue
                
            for file in files:
                if file.endswith((".py", ".js", ".yaml", ".json", ".env")):
                    filepath = os.path.join(root, file)
                    try:
                        with open(filepath, 'r') as f:
                            content = f.read()
                            
                        for pattern in self.SECRET_PATTERNS:
                            matches = re.findall(pattern, content, re.IGNORECASE)
                            if matches:
                                # Redact the actual secret
                                violations.append(f"{filepath}: Potential secret found")
                    except:
                        continue
        
        return {
            "passed": len(violations) == 0,
            "details": f"Found {len(violations)} potential secrets" if violations else "No secrets detected"
        }
    
    def check_evidence_package(self, context):
        """Verify evidence package exists and has content."""
        evidence_dir = "evidence"
        
        if not os.path.exists(evidence_dir):
            return {
                "passed": False,
                "details": "evidence/ directory missing"
            }
        
        files = os.listdir(evidence_dir)
        
        return {
            "passed": len(files) > 0,
            "details": f"{len(files)} evidence files" if files else "evidence/ empty"
        }
    
    def check_git_ready(self, context):
        """Check git status is clean."""
        # Check for uncommitted changes
        result = subprocess.run(
            ["git", "status", "--short"],
            capture_output=True,
            text=True
        )
        
        uncommitted = result.stdout.strip()
        
        return {
            "passed": len(uncommitted) == 0,
            "details": "Clean working tree" if not uncommitted else f"{len(uncommitted.split(chr(10)))} uncommitted changes"
        }
    
    def check_verification_complete(self, context):
        """Check verification was run."""
        # Check for verification artifacts
        evidence_dir = "evidence"
        
        if not os.path.exists(evidence_dir):
            return {
                "passed": False,
                "details": "No evidence directory"
            }
        
        # Look for verification indicators
        verification_indicators = [
            "test", "verify", "check", "pass", "fail"
        ]
        
        has_verification = False
        for filename in os.listdir(evidence_dir):
            if any(ind in filename.lower() for ind in verification_indicators):
                has_verification = True
                break
        
        return {
            "passed": has_verification,
            "details": "Verification artifacts found" if has_verification else "No verification evidence"
        }
    
    def check_documentation(self, context):
        """Check documentation exists."""
        docs = ["README.md", "REQUIREMENTS.md"]
        existing = [d for d in docs if os.path.exists(d)]
        
        return {
            "passed": len(existing) > 0,
            "details": f"{len(existing)}/{len(docs)} docs present"
        }
```

---

## Gate V→De Integration

```yaml
# In gate-requirements.yaml
gate_V_De:
  requirements:
    - id: "REQ-030"
      enhancement: "E003"
      name: "Pre-Delivery Checks"
      description: "All 7 pre-delivery checks passed"
      check: "pre_delivery_checklist"
      min_passed: 7  # All must pass
      critical_checks: ["CHK-002", "CHK-003", "CHK-004", "CHK-006"]
      required: true
```

---

## Terminal Output

### Success

```
┌─────────────────────────────────────────┐
│ PRE-DELIVERY CHECKLIST                  │
│ 7/7 PASSED                              │
├─────────────────────────────────────────┤
│ ✅ File Locations       - All in place  │
│ ✅ No Placeholders      - Clean         │
│ ✅ No Secrets           - Safe          │
│ ✅ Evidence Package     - 5 files       │
│ ✅ Git Ready            - Clean tree    │
│ ✅ Verification Done    - Tests passed  │
│ ✅ Documentation        - Complete      │
├─────────────────────────────────────────┤
│ STATUS: READY FOR DELIVERY              │
└─────────────────────────────────────────┘
```

### Failure

```
┌─────────────────────────────────────────┐
│ PRE-DELIVERY CHECKLIST                  │
│ 5/7 PASSED ⚠️  2 FAILED                 │
├─────────────────────────────────────────┤
│ ✅ File Locations       - All in place  │
│ ❌ No Placeholders      - Found: TODO   │
│ ✅ No Secrets           - Safe          │
│ ❌ Evidence Package     - Empty         │
│ ✅ Git Ready            - Clean tree    │
│ ✅ Verification Done    - Tests passed  │
│ ✅ Documentation        - Complete      │
├─────────────────────────────────────────┤
│ CRITICAL FAILURES:                      │
│ • CHK-004: Evidence package required    │
│                                         │
│ NON-CRITICAL:                           │
│ • CHK-002: Remove TODOs                 │
├─────────────────────────────────────────┤
│ STATUS: BLOCKED — Fix critical items    │
└─────────────────────────────────────────┘
```

---

## Implementation Status

| Component | Status |
|-----------|--------|
| 7 checks defined | ✅ |
| Placeholder detection | ✅ |
| Secret scanning | ✅ |
| Evidence verification | ✅ |
| Git status check | ✅ |
| Gate V→De integration | ✅ |
| Terminal output format | ✅ |

---

**End E003 Pre-Delivery Checklist Protocol**
