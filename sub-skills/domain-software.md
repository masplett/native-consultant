# Sub-Skill: Software Domain

**Load:** When domain == "software"  
**Trigger:** Keywords [code, python, javascript, api, script]

---

## Trio Configuration

| Role | Name | Tools |
|------|------|-------|
| Maker | Coder | Python/JS/TypeScript |
| Validator | Tester | pytest, jest, ruff |
| Aligner | Business Analyst | Requirements analysis |

## Verification Stack

```yaml
verification:
  syntax:
    python: ruff, ast.parse
    javascript: eslint
    
  testing:
    python: pytest
    javascript: jest
    coverage: >80%
    
  security:
    python: bandit
    javascript: eslint-security
    
  performance:
    benchmark: pytest-benchmark
    profile: cProfile
```

## YOLO Mode Shortcuts

```
Discovery (3 questions):
1. What does it need to do?
2. Any constraints (language, performance)?
3. What's "done" look like?

Build: Start immediately
Validation: Syntax + spot test
QA: README only
```

## File Extensions

```
.py, .js, .ts, .html, .css, .sql, .json, .yaml
```

## Source Enhancements

- E023-E034: Testing Frameworks
- E035-E040: Security & Quality

---

**End Software Domain Sub-Skill**
