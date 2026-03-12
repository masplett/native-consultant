# Section 7: User Preferences System

*Personalization guide: Teaching AI systems how you work, decide, and communicate*

---

## The Preferences File

### Location and Format

Your preferences live in a YAML file that the consultancy system reads at the start of each session:

```
consultancy-skill/
└── user-preferences.yaml
```

The YAML format is human-readable and editable, structured like this:

```yaml
# User Preferences for [Your Name]
# Captured from session interactions
# Last Updated: YYYY-MM-DD

user:
  name: "Your Name"
  preference_learning: "enabled"
  
preferences:
  - id: "pref_001"
    category: "decision_criteria"
    pattern: "quality_over_speed_cost"
    # ... more fields
```

> 📝 **Note**: YAML uses indentation (spaces, not tabs) to structure data. Be consistent with your spacing!

### How Preferences Are Learned

Preferences aren't just configured—they're **learned** over time. The system captures them through:

1. **Explicit statements**: "I always prefer quality over speed"
2. **Decision patterns**: Repeatedly choosing certain options
3. **Feedback corrections**: "No, I wanted it done this way instead"
4. **Session retrospectives**: "For future reference, I like..."

When the system detects a consistent preference, it:
- Creates a preference entry with a unique ID
- Records the source (which CR captured it)
- Documents the context and rationale
- Applies it automatically in relevant situations

### Preference Categories

Preferences are organized into logical groups:

| Category | Description | Examples |
|----------|-------------|----------|
| `decision_criteria` | How to choose between options | quality_over_speed_cost |
| `completion_standards` | What "done" looks like | full_traceability_required |
| `communication_protocol` | How information flows | cr_as_memory |
| `domain_defaults` | Domain-specific settings | default_architecture_pattern |
| `style_preferences` | Personal communication style | concise_vs_detailed |

---

## Built-in Example Preferences

The consultancy system ships with three foundational preferences that demonstrate the concept:

### pref_001: quality_over_speed_cost

```yaml
- id: "pref_001"
  category: "decision_criteria"
  pattern: "quality_over_speed_cost"
  established: "2026-03-12"
  source: "CR008"
  quote: "I choose quality over speed"
  full_context: "If I were able to I would choose c without hesitation..."
  principle: "Evaluate options on quality dimension first, ignore speed/cost unless quality is equal"
  applies_when:
    - "multiple_options_presented"
    - "tradeoffs_exist_between_speed_cost_quality"
    - "archiving_or_documenting_work"
  selection_rule: "Choose highest quality option regardless of label (A/B/C)"
  priority: "critical"
```

**What it does**: When presented with options A (fast), B (cheap), and C (quality), the system automatically recommends C, explaining the quality-first rationale.

### pref_002: full_traceability_required

```yaml
- id: "pref_002"
  category: "completion_standards"
  pattern: "full_traceability_required"
  established: "2026-03-12"
  source: "CR008"
  quote: "this information will be used in future"
  principle: "Work must be complete enough to be useful for future reference"
  applies_when:
    - "resolving_enhancements"
    - "creating_documentation"
    - "archiving_work"
  requires:
    - "metadata_sections"
    - "resolution_sections"
    - "clear_linkages"
  priority: "high"
```

**What it does**: Ensures all work products include proper context, metadata, and references so they remain useful months later.

### pref_003: cr_as_memory

```yaml
- id: "pref_003"
  category: "communication_protocol"
  pattern: "cr_as_memory"
  established: "2026-03-12"
  source: "E163_conversation"
  principle: "Every prompt is a change request; conversation is persisted in CR"
  rule: "All prompts create or append to CR; AI responses appended before delivery"
  applies_when:
    - "every_user_prompt"
  exceptions:
    - "prompt_refers_only_to_previous_cr_adds_nothing_new"
  action: "record_as_comment_on_existing_cr"
  priority: "critical"
```

**What it does**: Transforms every interaction into a persistent record, building institutional memory automatically.

---

## Creating Your Own Preferences

### Decision Criteria Preferences

Teach the system how you make tradeoffs:

```yaml
- id: "pref_004"
  category: "decision_criteria"
  pattern: "security_over_convenience"
  principle: "When security and user convenience conflict, prioritize security"
  applies_when:
    - "authentication_design"
    - "data_storage_decisions"
    - "third_party_integrations"
  selection_rule: "Choose the option with stronger security guarantees"
  priority: "high"
```

### Completion Standards

Define what "done" means for your projects:

```yaml
- id: "pref_005"
  category: "completion_standards"
  pattern: "test_coverage_required"
  principle: "No feature is complete without corresponding tests"
  applies_when:
    - "code_delivery"
    - "feature_completion"
  requires:
    - "unit_tests"
    - "integration_tests"
    - "documentation_updates"
  rejection_criteria: "Code without tests will be returned for completion"
  priority: "high"
```

### Communication Style

Adjust how the AI communicates with you:

```yaml
- id: "pref_006"
  category: "style_preferences"
  pattern: "executive_summary_first"
  principle: "Lead with the conclusion, then provide supporting detail"
  applies_when:
    - "presenting_analysis"
    - "providing_recommendations"
    - "status_updates"
  structure:
    - "one_line_summary"
    - "key_points_bulleted"
    - "detailed_explanation"
  priority: "medium"
```

### Domain Defaults

Set defaults for specific domains:

```yaml
- id: "pref_007"
  category: "domain_defaults"
  pattern: "webapp_default_stack"
  domain: "software"
  principle: "Default technology choices for web applications"
  defaults:
    frontend: "React with TypeScript"
    backend: "Node.js with Express"
    database: "PostgreSQL"
    hosting: "AWS"
  applies_when:
    - "new_webapp_project"
    - "technology_selection"
  priority: "medium"
```

### 🧠 Deep Dive: Preference Priority Levels

Priority determines how strictly a preference is enforced:

| Priority | Behavior | Use For |
|----------|----------|---------|
| `critical` | Violation stops workflow, requires explicit override | Core values, non-negotiables |
| `high` | Strongly weighted, explicit justification to override | Important standards |
| `medium` | Considered, can be overridden with good reason | General guidelines |
| `low` | Suggested, easily overridden | Nice-to-haves |

---

## Real Example Walkthrough

### Scenario: Architecture Decision

**Without Preference (pref_001 not set)**:

> **User**: "We need to choose an architecture for our new service. Here are three options:
> - A: Quick prototype using serverless functions (1 week)
> - B: Balanced approach with containers (3 weeks)  
> - C: Full microservices with Kubernetes (6 weeks)"
>
> **AI**: "Here are 3 options with their tradeoffs:
> - A is fastest but may have scaling limits
> - B offers a middle ground
> - C is most robust but takes longest
> Which would you prefer?"

Notice how the AI presents options neutrally, forcing you to evaluate each time.

**With Preference (pref_001: quality_over_speed_cost)**:

> **User**: "We need to choose an architecture for our new service."
>
> **AI**: "Based on your quality-first preference, I recommend **Option C: Full microservices with Kubernetes**. While it takes 6 weeks compared to 1 week for the serverless option, it provides:
> - Superior scalability and resilience
> - Clear service boundaries for future development
> - Better separation of concerns
> - Industry-proven patterns for long-term maintainability
>
> This aligns with your established principle of prioritizing quality over speed or cost. Would you like me to proceed with detailed design for Option C, or would you prefer to review the other options first?"

See the difference? The AI:
1. **Anticipates** your preference
2. **Justifies** the recommendation based on your principles
3. **Saves time** by pre-filtering options
4. **Respects autonomy** by still offering alternatives

### 📝 Template: Creating a New Preference

When you notice a pattern in your interactions, capture it:

```markdown
## New Preference Capture

### Observation
I've noticed I consistently [behavior/pattern]

### Example
In CR-XXX, when [situation], I chose [option] because [rationale]

### Proposed Preference
- Category: [decision_criteria|completion_standards|communication_protocol|...]
- Pattern name: [short_identifier]
- Principle: [one sentence]
- Applies when: [conditions]
- Action/Rule: [what to do]
- Priority: [critical|high|medium|low]

### Validation
Test this preference against past decisions:
- CR-XXX: Would it have helped? [Yes/No]
- CR-YYY: Consistent with this pattern? [Yes/No]
```

---

## Managing Your Preferences

### Reviewing Existing Preferences

Periodically review your preferences file to:
- Remove outdated preferences
- Adjust priority levels
- Consolidate overlapping preferences
- Clarify ambiguous language

### Preference Conflicts

Sometimes preferences conflict. For example:
- `pref_001`: Quality over speed
- `pref_008`: Speed over quality (for prototypes only)

Resolution strategy:
1. Add scope conditions to narrow applicability
2. Include exception clauses
3. Set different priorities
4. Create a meta-preference for conflict resolution

### Sharing Preferences

Preferences can be shared across projects or team members:

```yaml
# team-preferences.yaml
# Shared preferences for the Platform Team

team: "Platform Engineering"
preferences:
  - id: "team_pref_001"
    # ... shared preference
    
individual_overrides:
  mark:
    - override: "team_pref_001"
      with: "personal_pref_042"
```

---

## Quick Reference: Preference Fields

```yaml
- id: "pref_XXX"              # Unique identifier (required)
  category: "..."             # Classification (required)
  pattern: "..."              # Short name (required)
  established: "YYYY-MM-DD"   # When captured
  source: "CR-XXX"            # Originating conversation
  quote: "..."                # Your exact words (context)
  full_context: "..."         # Extended context
  principle: "..."            # Core rule (required)
  rule: "..."                 # Actionable instruction
  applies_when:               # Conditions (list)
    - "..."
  requires:                   # Must-haves (list)
    - "..."
  exceptions:                 # When NOT to apply (list)
    - "..."
  selection_rule: "..."       # How to choose
  rejection_criteria: "..."   # When to reject
  priority: "..."             # critical/high/medium/low
```

---

## Summary

The preferences system transforms generic AI assistance into **personalized collaboration**. By capturing your patterns, principles, and priorities, the system learns to:

- **Anticipate** your decisions before you state them
- **Filter** options based on your criteria
- **Communicate** in your preferred style
- **Deliver** work to your standards

Start with the built-in preferences, add your own as patterns emerge, and periodically review to keep the system aligned with your evolving needs.

> 💡 **Remember**: The goal isn't to automate decision-making—it's to eliminate repetitive explanation and ensure consistency across all your projects.

---

*Previous: Master context management with [← Context Management](06-Context-Management.md)*
