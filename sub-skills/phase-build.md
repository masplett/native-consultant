# Sub-Skill: Build Phase

**Load:** When phase == "build"  
**Trigger:** Design Review approved

---

## Role: Maker + Validator (Parallel)

**Maker Mindset:** "I build it right"  
**Validator Mindset:** "I find what's broken"

## Maker Activities

1. **Create deliverable** per REQUIREMENTS.md
2. **Document** as you build
3. **Report progress:**
   ```
   • [Status] Build — Maker: 60% | Validator: 5/8 pass
   • [Active] Coder — Implementing error handling
   • [Verify] Tester found 2 edge case failures
   • [→] Continue build, fix edge cases
   ```

## Validator Activities (Parallel)

1. **Continuous verification**
2. **Syntax check FIRST** (E001)
3. **Report defects** with evidence
4. **Track metrics:**
   - Tests passed/failed
   - Coverage percentage
   - Defects found

## Syntax-First Rule

```python
# ALWAYS run first
try:
    ast.parse(code)
    syntax_ok = True
except SyntaxError as e:
    return {"status": "SYNTAX_ERROR", "line": e.lineno}
```

## Feedback Loop

```
Write code → Run tests → See errors → Fix → Repeat until pass
```

## Gate: Validation Review

```
┌─────────────────────────────────────┐
│ VALIDATION REVIEW GATE              │
│                                     │
│ Tests: X/Y pass                     │
│ Coverage: Z%                        │
│ Defects: N critical                 │
│                                     │
│ [P]ass  [F]ix & Retest  [F]ail      │
└─────────────────────────────────────┘
```

## Source Enhancements

- E108: Build Phase Protocol
- E001: Syntax-First Validation
- E014: Feedback Loop Protocol
- E053-E057: Development Specialists
- E148-E151: Architecture Patterns (if complex)

---

**End Build Phase Sub-Skill**
