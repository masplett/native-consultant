# Section 6: Context Management Mastery

*Advanced guide to working within AI context limitations and building institutional memory*

---

## The Context Challenge

### Why AI Has Limited "Working Memory"

Here's something that surprises most people: despite AI systems appearing to have vast knowledge, they actually have surprisingly limited **working memory** during a conversation. Think of it like a brilliant professor who has read every book in the library but can only keep a certain number of pages open on their desk at once.

Modern AI systems typically have context windows ranging from 8,000 to 200,000 tokens (roughly words and punctuation). That sounds like a lot—until you consider:

- Large codebases with thousands of files
- Complex project requirements spanning multiple domains
- Long-running conversations with extensive history
- Detailed system architectures and documentation

When the context window fills up, something has to give. The system starts "forgetting" the earliest parts of the conversation—like someone carefully removing pages from the bottom of their document stack to make room for new ones at the top.

### What Happens When Context Is Exceeded

When you exceed the context window, the behavior depends on the AI system, but generally:

1. **Early conversation erosion**: The oldest messages are silently dropped
2. **Reference failures**: "As I mentioned earlier..." might refer to something that's been forgotten
3. **Decision drift**: The AI loses track of decisions made at the start of the conversation
4. **Requirement amnesia**: Critical requirements from your initial prompt may vanish

> ⚠️ **Warning**: This isn't just an academic concern. It happens regularly in long-running consultancy sessions, especially when working through complex multi-domain projects.

### Real-World Analogy: Juggling vs. Plate Spinning

**Juggling Balls** (Traditional Programming):
- You keep all variables in memory simultaneously
- Everything is accessible at any moment
- The complexity limit is your brain/processing power

**Plate Spinning** (AI Context Management):
- You can only actively manage a limited number of plates
- You must periodically revisit plates to keep them spinning
- The skill is knowing *which* plates to focus on and *when*

With AI systems, you're not juggling code—you're spinning plates. The art of context management is learning to keep the right plates spinning while strategically parking others for later retrieval.

---

## Requirement Splitting Strategies

When a project is too large for one conversation (and most meaningful projects are), you need to split requirements strategically. Here are four battle-tested approaches:

### 1. Vertical Splitting: By Component/Layer

Split by architectural layers or system components:

```
┌─────────────────────────────────────┐
│         Presentation Layer          │  ← Session 1: UI/UX Design
├─────────────────────────────────────┤
│          Business Logic             │  ← Session 2: Core Algorithms
├─────────────────────────────────────┤
│         Data Access Layer           │  ← Session 3: Database & Storage
├─────────────────────────────────────┤
│       External Integrations         │  ← Session 4: APIs & Services
└─────────────────────────────────────┘
```

**Best for**: N-tier architectures, microservices, clearly separated concerns

**Trade-off**: Requires strong interface contracts between layers. Changes to shared models affect multiple sessions.

### 2. Horizontal Splitting: By Phase

Split by the natural workflow phases:

```
Discovery → Design → Build → Validate → Deliver
   ↓          ↓        ↓         ↓          ↓
Session 1  Session 2 Session 3 Session 4  Session 5
```

**Best for**: Projects following established methodologies, sequential dependencies

**Trade-off**: Each session depends on the previous phase's outputs. Requires careful handoff documentation.

### 3. Temporal Splitting: Time-Boxed Chunks

Divide work into time-based sprints:

| Sprint | Duration | Focus | Deliverable |
|--------|----------|-------|-------------|
| 1 | Week 1 | Foundation | Core data models |
| 2 | Week 2 | Features A-C | Working modules |
| 3 | Week 3 | Features D-F | Integration ready |
| 4 | Week 4 | Polish | Release candidate |

**Best for**: Agile projects, iterative development, deadline-driven work

**Trade-off**: May sacrifice architectural coherence for delivery speed. Requires regular refactoring sessions.

### 4. Functional Splitting: By Feature

Organize by user-facing functionality:

```
┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐
│  User Management│ │  Order Processing│ │  Reporting      │
│  • Registration │ │  • Cart          │ │  • Dashboards   │
│  • Profiles     │ │  • Checkout      │ │  • Exports      │
│  • Permissions  │ │  • Fulfillment   │ │  • Analytics    │
└─────────────────┘ └─────────────────┘ └─────────────────┘
     Session 1           Session 2           Session 3
```

**Best for**: Feature-driven development, user story organization, parallel team work

**Trade-off**: May duplicate infrastructure work across sessions. Requires shared service coordination.

### 🧠 Deep Dive: Choosing Your Split Strategy

Ask these questions to determine the right approach:

```
Is your architecture well-defined?
  YES → Vertical Splitting
  NO  → Continue...

Are phases clearly sequential?
  YES → Horizontal Splitting
  NO  → Continue...

Do you have hard deadlines?
  YES → Temporal Splitting
  NO  → Functional Splitting
```

Most complex projects use a **hybrid approach**—perhaps horizontal splitting for the main phases, with functional splitting within each phase.

---

## CR-as-Memory Pattern

*Implementation of `pref_003: cr_as_memory`*

### Every Prompt IS a Change Request

Here's a paradigm shift that transforms how you work with AI systems: **treat every interaction as a Change Request (CR)**.

Instead of thinking:
> "I'm chatting with an AI"

Think:
> "I'm creating a persistent record of decisions and changes"

This pattern, captured in preference `pref_003`, means:

1. **Every prompt** creates or appends to a CR
2. **AI responses** are recorded before delivery to you
3. **The conversation** becomes a searchable, referenceable history
4. **Institutional memory** persists beyond any single session

### Conversation Persistence Strategy

```
┌─────────────────────────────────────────────────────────┐
│  USER PROMPT → Record in CR → AI Processes →            │
│                                              ↓          │
│  AI RESPONSE → Record in CR → Deliver to User →         │
│                                              ↓          │
│  NEW USER PROMPT → Which CR? → Continue or Create New   │
└─────────────────────────────────────────────────────────┘
```

### How to Reference Previous CRs

When starting a new session, you don't need to re-explain everything:

> "Continuing from CR-156: Implement the authentication module as discussed. Focus on the OAuth2 integration we decided on in section 3.2 of that CR."

The AI retrieves CR-156, reads the decisions and context, and continues seamlessly.

### Building Institutional Memory

Over time, this pattern creates a **knowledge base**:

```yaml
Project: E-Commerce Platform v2
├── CR-001: Initial discovery and requirements
├── CR-002: Architecture decisions (microservices)
├── CR-003: Database schema design
├── ...
├── CR-156: Authentication module implementation
├── CR-157: OAuth2 provider configuration
└── CR-158: Current session - Payment gateway integration
```

> 💡 **Pro Tip**: When a new team member (or AI instance) joins, they can read the CR history instead of needing extensive handoff meetings.

---

## Composability Patterns

Complex projects require combining multiple approaches. Here are the four fundamental patterns from our composability framework:

### Pipeline Pattern

Linear processing with error handling:

```
Input → [Validate] → [Transform] → [Enrich] → [Output]
          ↓              ↓            ↓
       Error?        Error?       Error?
          ↓              ↓            ↓
       Abort         Retry        Alert
```

**When to use**: 
- Sequential workflows (Discovery → Design → Build)
- Regulated processes requiring audit trails
- Data processing with validation gates

**Example**: Requirements must pass validation before entering design. Design must be approved before build begins.

### Fan-Out/Fan-In

Parallel agent distribution:

```
                    ┌→ [Security Review] ──┐
                    │                      │
Requirements → Fan ─┼→ [UX Analysis] ──────┼→ Fan-In → Consolidated Plan
                    │                      │
                    └→ [Tech Feasibility] ─┘
```

**When to use**:
- Multi-domain analysis (security + UX + technical)
- Multi-file code reviews
- Parallel research tasks

**Example**: A new feature requires simultaneous security review, user experience analysis, and technical feasibility assessment.

### Decorator Pattern

Add capabilities without modification:

```
[Cache] → [Validate] → [Retry] → [Core Agent]
```

**Built-in decorators**:
| Decorator | Purpose |
|-----------|---------|
| Caching | Return cached result for identical inputs |
| Retry | Automatic retry with exponential backoff |
| Logging | Audit all operations |
| Validation | Schema and constraint checking |

**When to use**:
- Adding cross-cutting concerns (logging, caching)
- Gradual capability enhancement
- Environment-specific modifications

### Fallback Pattern

Graceful degradation:

```
Try:    Native Parser
         ↓ (unavailable)
Fallback: Tree-sitter
         ↓ (no grammar)
Fallback: Regex
         ↓ (no pattern match)
Fallback: Heuristic Guess
         ↓
        Alert User
```

**When to use**:
- Environment limitations (missing tools)
- Variable availability of resources
- Robust error handling

---

## Practical Examples

### Example 1: "Project Too Big for One Chat"

**Scenario**: Building a complete SaaS platform (estimate: 50,000 tokens of context needed)

**Solution**: Hybrid splitting approach

```
Phase 1: Discovery (Horizontal)
  └─ CR-001: Domain analysis and user research
  └─ CR-002: Technical constraints audit
  
Phase 2: Architecture (Vertical)
  └─ CR-003: Frontend component design
  └─ CR-004: Backend service architecture
  └─ CR-005: Data model and storage
  
Phase 3: Build (Functional)
  └─ CR-006: User authentication system
  └─ CR-007: Dashboard and analytics
  └─ CR-008: Admin interface
  └─ CR-009: Billing integration
  
Phase 4: Validation (Horizontal)
  └─ CR-010: Security audit
  └─ CR-011: Performance testing
  └─ CR-012: User acceptance testing
```

### Example 2: Maintaining Continuity Across Sessions

**Session 1 ends with**:
> "We've designed the database schema. Next session, we'll implement the API layer."

**Between sessions**, CR-042 contains:
- Complete schema design
- Decision rationale
- Open questions
- Next steps

**Session 2 begins with**:
> "Continuing from CR-042. Implement the REST API layer based on the schema we designed. Note that we decided to use UUIDs for all primary keys and soft deletes for audit purposes."

### 📝 Template: Session Handoff

```markdown
## Session Handoff Template

### Session Info
- Date: YYYY-MM-DD
- CR Reference: CR-XXX
- Next CR: CR-YYY

### Completed
- [ ] Item 1
- [ ] Item 2

### Decisions Made
1. Decision: [Description]
   Rationale: [Why]
   
### Current State
- [Brief description of where we are]

### Next Session Focus
- [What to tackle next]

### Open Questions
- [Questions needing answers]

### Reference Materials
- [Links to relevant CRs, docs, etc.]
```

---

## Summary: Context Management Checklist

Before starting any substantial project:

- [ ] Estimate context requirements (rough token count)
- [ ] Choose splitting strategy based on project nature
- [ ] Set up CR tracking system
- [ ] Define session boundaries
- [ ] Create handoff templates
- [ ] Establish reference patterns for cross-CR linking

Remember: Context management isn't overhead—it's **the skill** that enables AI systems to tackle problems larger than their immediate memory. Master this, and you unlock the ability to work on truly ambitious projects.

---

*Next: Learn how to personalize your AI consultancy experience with [User Preferences →](07-User-Preferences.md)*
