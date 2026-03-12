# Sub-Skill: Composability Patterns

**Load:** When project_complexity == "medium" or "complex"  
**Trigger:** Multiple components, parallel work needed

---

## 1. Pipeline Pattern

Linear stage processing with error handling:

```
Input → [Stage 1] → [Stage 2] → [Stage 3] → Output
```

Use for: Sequential workflows, regulated processes

## 2. Fan-Out/Fan-In

Parallel agent distribution:

```
              ┌→ [Agent A] ──┐
              │              │
Input → Fan ──┼→ [Agent B] ──┼→ Fan-In → Output
              │              │
              └→ [Agent C] ──┘
```

Use for: Multi-domain analysis, multi-file processing

## 3. Decorator Pattern

Add capabilities without modification:

```
Logging → Caching → Retry → Core Agent
```

Built-in decorators:
- Caching: Return cached result if same input
- Retry: Retry on failure with backoff
- Logging: Log all activity
- Validation: Validate inputs/outputs

## 4. Fallback Pattern

Graceful degradation:

```
Try: Native → Tree-sitter → Regex → Heuristic
```

Use for: Environment limitations, tool unavailability

## Source Enhancements

- E148: Pipeline Pattern
- E149: Fan-Out/Fan-In
- E150: Decorator Pattern
- E151: Fallback Pattern

---

**End Composability Patterns Sub-Skill**
