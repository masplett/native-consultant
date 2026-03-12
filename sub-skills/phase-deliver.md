# Sub-Skill: Deliver Phase

**Load:** When phase == "deliver"  
**Trigger:** Validation passed, entering Final QA

---

## Role: All Three + QA

**Maker:** Confirms deliverable complete  
**Validator:** Final verification  
**Aligner:** Final alignment check  
**QA:** Final QA checklist execution

## Phase Entry Conditions

- [x] Validation phase completed
- [x] All verification checks passed
- [x] Approval received at Validation Review gate

## Final QA Protocol

```
Spawn QA role (can be Aligner or dedicated QA)
Run through Final QA Checklist:
```

### Final QA Checklist

```markdown
## FINAL QA CHECKLIST

### Files and Structure
- [ ] All deliverable files present
- [ ] Files in correct locations
- [ ] No orphaned or temp files

### Documentation
- [ ] REQUIREMENTS.md reflects actual deliverable
- [ ] Documentation is accurate
- [ ] No placeholder text remaining (e.g., {template_variables})

### Evidence Package
- [ ] Verification reports complete
- [ ] Test results included
- [ ] Validation artifacts present

### Git Preparation
- [ ] Commit message prepared
- [ ] Team attribution included
- [ ] Branch naming follows convention

### Safety
- [ ] No files outside working directory
- [ ] No credentials in output
- [ ] Safety boundaries respected

QA DECISION: [PASS] / [FIX] / [HOLD]
```

## Delivery Package Assembly

```
delivery-package/
├── deliverables/
│   └── [primary deliverable files]
├── REQUIREMENTS.md
└── evidence/
    ├── verification_report.md
    ├── test_results/
    └── validation_artifacts/
```

## Git Integration

### Commit Message Template
```
[Consultancy-{domain}] {task-id}: {description}

Team:
- Maker ({role}): {summary}
- Validator ({role}): {verification}
- Aligner ({role}): {alignment}

Verification:
- Tests: {X}/{Y} pass
- Coverage: {Z}%

Evidence: {path}
Reviewed-by: {client}
```

### Branch Naming
```
consultancy/{domain}/{task-id}

Examples:
- consultancy/software/task-001
- consultancy/manufacturing/motor-mount
```

### Archive Process
```
consultancy/
├── active/     → Move completed task to archive
└── archive/
    └── {yyyy-mm}/
        └── {task-id}/
```

## Delivery Gate

```
┌─────────────────────────────────────────┐
│ DELIVERY GATE                           │
│                                         │
│ Final QA: [PASS/FIX/HOLD]               │
│ Package: [Assembled]                    │
│ Git: [Ready to commit]                  │
│                                         │
│ [Approve & Push to Git]                 │
│ [Request Changes]                       │
└─────────────────────────────────────────┘
```

## Source Enhancements

- E110: Delivery Phase Protocol
- protocols/final-qa.md

---

**End Deliver Phase Sub-Skill**
