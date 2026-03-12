# Section 5: The Five Domains — Choosing Your Adventure

Welcome to the domain selection guide! Think of domains as different "modes" the consultancy system can operate in. Just like you wouldn't use the same approach to build a website as you would to design a dress or manufacture a car part, the consultancy system adapts its roles and workflows based on what you're trying to create.

Each domain has its own flavor, its own specialized language, and its own take on what Maker, Validator, and Aligner mean. Let's explore all five so you can pick the right one for your project!

---

## 🎯 Domain Selection Flowchart

```
╔══════════════════════════════════════════════════════════════════════════════╗
║                        WHICH DOMAIN DO I NEED?                               ║
╠══════════════════════════════════════════════════════════════════════════════╣
║                                                                              ║
║  What are you building?                                                      ║
║       │                                                                      ║
║       ├── Code, apps, websites, automation?                                  ║
║       │      └──► SOFTWARE domain                                            ║
║       │                                                                      ║
║       ├── Physical products, parts, production lines?                        ║
║       │      └──► MANUFACTURING domain                                       ║
║       │                                                                      ║
║       ├── Clothing, accessories, collections?                                ║
║       │      └──► FASHION domain                                             ║
║       │                                                                      ║
║       ├── Aircraft, spacecraft, avionics?                                    ║
║       │      └──► AEROSPACE domain                                           ║
║       │                                                                      ║
║       └── Business processes, org changes, strategy?                         ║
║              └──► ENTERPRISE domain                                          ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
```

---

## 💻 Domain 1: Software

**What Keywords Trigger It:**

```
"build me an app"      "create a website"       "automate this"
"write a script"       "develop software"       "code solution"
"API integration"      "database design"        "web application"
"mobile app"           "desktop tool"           "SaaS platform"
```

**The Specialized Trio Roles:**

| Role | Software Domain Identity | What They Do |
|------|-------------------------|--------------|
| **Maker** | The Developer | Writes code, designs architecture, implements features |
| **Validator** | The QA Engineer / Security Analyst | Tests functionality, reviews code, checks for bugs and vulnerabilities |
| **Aligner** | The Product Manager | Ensures features match user needs, manages scope, prioritizes backlog |

**Typical Projects:**

- Web applications (React, Vue, Angular)
- Backend APIs (Node.js, Python, Go, Java)
- Mobile apps (iOS, Android, cross-platform)
- Automation scripts and tools
- Database designs and migrations
- System integrations and middleware
- DevOps pipelines and infrastructure

**Example Session:**

```
┌────────────────────────────────────────────────────────────────┐
│  YOU: "I need a web app for tracking my vinyl record collection"│
├────────────────────────────────────────────────────────────────┤
│                                                                │
│  [SOFTWARE domain activated]                                   │
│                                                                │
│  MAKER (Developer):                                            │
│  "Great idea! Let's talk tech stack. Are you thinking:         │
│   - React frontend with a Node.js API?                         │
│   - Or would you prefer something like a Django monolith?      │
│   And for data — how many records are we talking, hundreds     │
│   or thousands? That affects our database choice."             │
│                                                                │
│  VALIDATOR (QA/Security):                                      │
│  "I should note — if this includes user accounts, we'll need   │
│   to think about authentication. Also, will this be public-    │
│   facing or just for personal use? That changes our security   │
│   requirements significantly."                                 │
│                                                                │
│  ALIGNER (Product Manager):                                    │
│  "Before we go deep on tech, let's clarify the core need.     │
│   Is this mainly for:                                          │
│   A) Just cataloging what you own?                             │
│   B) Tracking condition/value for insurance?                   │
│   C) Social features — sharing, trading, discovering?          │
│   The answer changes our MVP significantly."                   │
│                                                                │
└────────────────────────────────────────────────────────────────┘
```

**💡 Pro Tip:** In Software, the Aligner is your shield against scope creep. "Just one more feature" is the enemy of "actually shipping this century."

**⚠️ Watch Out For:** Over-engineering! The Maker loves elegant abstractions, but sometimes a simple script is all you need.

---

## 🏭 Domain 2: Manufacturing

**What Keywords Trigger It:**

```
"design a part"        "production line"        "manufacturing process"
"CNC machining"        "3D printing"            "injection molding"
"quality control"      "assembly workflow"      "bill of materials"
"supply chain"         "factory layout"         "tool design"
```

**The Specialized Trio Roles:**

| Role | Manufacturing Domain Identity | What They Do |
|------|------------------------------|--------------|
| **Maker** | The Design Engineer | Creates CAD models, specifies materials, designs tooling |
| **Validator** | The Quality Engineer / Metrologist | Validates tolerances, performs inspections, ensures compliance |
| **Aligner** | The Production Planner | Optimizes for manufacturability, schedules, cost-efficiency |

**Typical Projects:**

- Custom part design for CNC machining
- 3D printed prototypes and tooling
- Injection mold design
- Assembly line workflow optimization
- Quality control process design
- Factory layout planning
- Supply chain integration
- Tool and fixture design

**Example Session:**

```
┌────────────────────────────────────────────────────────────────┐
│  YOU: "I need a custom bracket to mount a sensor on our        │
│       packaging line"                                          │
├────────────────────────────────────────────────────────────────┤
│                                                                │
│  [MANUFACTURING domain activated]                              │
│                                                                │
│  MAKER (Design Engineer):                                      │
│  "Got it! First, let's understand the loading. What's the      │
│   weight of this sensor? Any vibration or shock loads?         │
│   And what's your production volume — one prototype or         │
│   thousands? That determines whether we 3D print, machine,     │
│   or cast this bracket."                                       │
│                                                                │
│  VALIDATOR (Quality Engineer):                                 │
│  "Critical question: what tolerance do you actually need?      │
│   ±0.1mm is standard machining. ±0.01mm gets expensive fast.   │
│   And do we need material certification? If this is food       │
│   packaging, FDA compliance matters."                          │
│                                                                │
│  ALIGNER (Production Planner):                                 │
│  "Let's also think about the bigger picture. If you need 100   │
│   of these per month, a one-off custom design might not be     │
│   the most cost-effective. Could we design a universal         │
│   mounting system instead? And what's your timeline — if       │
│   you need it tomorrow, 3D printing beats waiting 2 weeks      │
│   for a machined part."                                        │
│                                                                │
└────────────────────────────────────────────────────────────────┘
```

**💡 Pro Tip:** Material selection is everything in Manufacturing. Aluminum vs. steel vs. plastic isn't just about strength — it's about cost, lead time, machinability, and weight.

**⚠️ Watch Out For:** Designing for perfect conditions. Real factories have vibration, temperature swings, and operators in a hurry. Design for reality, not the CAD ideal.

---

## 👗 Domain 3: Fashion

**What Keywords Trigger It:**

```
"design a dress"       "fashion collection"     "clothing line"
"pattern making"       "fabric selection"       "garment construction"
"tech pack"            "sizing grade"           "production sample"
"lookbook"             "season collection"      "accessory design"
```

**The Specialized Trio Roles:**

| Role | Fashion Domain Identity | What They Do |
|------|------------------------|--------------|
| **Maker** | The Fashion Designer / Pattern Maker | Creates designs, drafts patterns, selects fabrics |
| **Validator** | The Technical Designer / Fit Specialist | Checks construction, validates fit, ensures wearability |
| **Aligner** | The Merchandising Planner | Aligns with trends, market positioning, production costs |

**Typical Projects:**

- Individual garment design (dress, jacket, pants)
- Full seasonal collections
- Accessory design (bags, shoes, jewelry)
- Pattern drafting and grading
- Tech pack creation
- Fabric sourcing guidance
- Sample review and iteration
- Production timeline planning

**Example Session:**

```
┌────────────────────────────────────────────────────────────────┐
│  YOU: "I want to create a sustainable capsule collection for   │
│       working professionals"                                   │
├────────────────────────────────────────────────────────────────┤
│                                                                │
│  [FASHION domain activated]                                    │
│                                                                │
│  MAKER (Fashion Designer):                                     │
│  "Love the sustainable angle! Let's explore. How many pieces   │
│   in this capsule — 5? 10? And what's the aesthetic?           │
│   Minimalist and timeless? Or something with more personality? │
│   For sustainable fabrics, are we thinking organic cotton,     │
│   Tencel, recycled polyester, or deadstock materials?"         │
│                                                                │
│  VALIDATOR (Technical Designer):                               │
│  "Fit is make-or-break for professional wear. What's your     │
│   target size range? And are we designing for a specific       │
│   body type or inclusive sizing? Also, construction-wise,      │
│   French seams and bound edges look premium but cost more.     │
│   What's your price point? That'll guide our technique."       │
│                                                                │
│  ALIGNER (Merchandising Planner):                              │
│  "Let's think market positioning. 'Sustainable workwear'       │
│   could be Everlane-priced ($80-150) or Eileen Fisher          │
│   ($200-400). Who's your customer? And what's the launch       │
│   timeline — if you want this for Fall, we need to start       │
│   sampling NOW. Fabric lead times can be 8-12 weeks."          │
│                                                                │
└────────────────────────────────────────────────────────────────┘
```

**💡 Pro Tip:** In Fashion, fabric is your biggest variable. The same design in different materials can go from $20 fast fashion to $200 luxury. Choose wisely!

**⚠️ Watch Out For:** Designing without considering production. That intricate draping looks amazing in sketch, but can your manufacturer actually sew it at scale?

---

## ✈️ Domain 4: Aerospace

**What Keywords Trigger It:**

```
"aircraft design"      "avionics system"        "flight control"
"aerospace part"       "structural analysis"    "DO-178C"
"safety critical"      "aerodynamics"           "propulsion"
"spacecraft"           "satellite system"       "compliance certification"
```

**The Specialized Trio Roles:**

| Role | Aerospace Domain Identity | What They Do |
|------|--------------------------|--------------|
| **Maker** | The Aerospace Engineer | Designs systems, performs analysis, creates technical specifications |
| **Validator** | The Safety Engineer / Certification Specialist | Ensures compliance, performs verification, manages traceability |
| **Aligner** | The Systems Integrator / Mission Planner | Validates system interactions, ensures mission success criteria |

**Typical Projects:**

- Aircraft component design
- Avionics software (DO-178C compliance)
- Structural analysis and optimization
- Flight control systems
- Satellite subsystem design
- Propulsion system analysis
- Safety case development
- Certification documentation

**Example Session:**

```
┌────────────────────────────────────────────────────────────────┐
│  YOU: "We're developing a new UAV payload integration system   │
│       and need to ensure it meets certification requirements"  │
├────────────────────────────────────────────────────────────────┤
│                                                                │
│  [AEROSPACE domain activated]                                  │
│                                                                │
│  MAKER (Aerospace Engineer):                                   │
│  "UAV payload integration — understood. What class of UAV     │
│   are we talking? Part 107 small UAS has different             │
│   requirements than a Part 91 aircraft. And what's the         │
│   payload — camera, sensor suite, cargo? Weight and CG         │
│   shifts are critical. We'll need full structural analysis."   │
│                                                                │
│  VALIDATOR (Safety/Certification):                             │
│  "Before we design anything, what's our certification path?    │
│   Are we pursuing TC, STC, or working under an existing COA?   │
│   For the software side, if this is safety-critical,           │
│   DO-178C applies. That's not just coding — that's             │
│   requirements traceability, MC/DC coverage, and formal        │
│   verification. Timeline just got longer."                     │
│                                                                │
│  ALIGNER (Systems Integrator):                                 │
│  "Let's step back. What's the mission profile? Payload         │
│   requirements often conflict with range and endurance.        │
│   A heavier sensor means shorter flight time. Are there        │
│   existing interfaces we must maintain compatibility with?     │
│   And what's the operational environment — civilian,           │
│   military, international? That affects our compliance         │
│   framework significantly."                                    │
│                                                                │
└────────────────────────────────────────────────────────────────┘
```

**💡 Pro Tip:** In Aerospace, documentation IS the deliverable. The hardware is important, but without the certification paperwork, it doesn't fly. Literally.

**⚠️ Watch Out For:** Underestimating compliance overhead. Safety-critical systems can require 3x the documentation of the actual engineering work. Plan accordingly.

---

## 🏢 Domain 5: Enterprise

**What Keywords Trigger It:**

```
"business process"     "organizational change"  "strategy"
"workflow design"      "change management"      "digital transformation"
"KPI framework"        "operational excellence" "process mapping"
"stakeholder analysis" "training program"       "compliance process"
```

**The Specialized Trio Roles:**

| Role | Enterprise Domain Identity | What They Do |
|------|---------------------------|--------------|
| **Maker** | The Management Consultant / Process Designer | Designs workflows, creates frameworks, develops solutions |
| **Validator** | The Risk Analyst / Compliance Officer | Assesses risks, checks regulatory compliance, validates controls |
| **Aligner** | The Change Manager / Stakeholder Lead | Manages adoption, ensures cultural fit, drives engagement |

**Typical Projects:**

- Business process reengineering
- Digital transformation roadmaps
- Organizational restructuring
- Change management programs
- Compliance process design
- Training program development
- KPI and metrics frameworks
- Stakeholder communication plans

**Example Session:**

```
┌────────────────────────────────────────────────────────────────┐
│  YOU: "We need to redesign our customer onboarding process     │
│       to reduce churn in the first 90 days"                   │
├────────────────────────────────────────────────────────────────┤
│                                                                │
│  [ENTERPRISE domain activated]                                 │
│                                                                │
│  MAKER (Management Consultant):                                │
│  "Churn reduction — classic challenge. Let's diagnose first.  │
│   What does your current onboarding look like? Is it high-     │
│   touch (account managers) or low-touch (self-service)?        │
│   And where are people dropping off — during setup, first      │
│   use, or when they hit their first roadblock?"                │
│                                                                │
│  VALIDATOR (Risk/Compliance):                                  │
│  "As we redesign, what constraints do we have? Are there       │
│   regulatory requirements for customer verification?           │
│   GDPR or CCPA considerations for data handling?               │
│   And are there audit trails we must maintain?                 │
│   Sometimes the 'perfect' process fails compliance checks."    │
│                                                                │
│  ALIGNER (Change Manager):                                     │
│  "The best process in the world fails if people don't use it.  │
│   Who are your key stakeholders? Sales might want speed,       │
│   while Legal wants thoroughness. How do we balance that?      │
│   And what about the customer-facing teams — are they bought   │
│   into this change? Resistance can kill adoption before        │
│   launch. Let's map the stakeholder landscape."                │
│                                                                │
└────────────────────────────────────────────────────────────────┘
```

**💡 Pro Tip:** In Enterprise, the "solution" is only 20% of the work. Change management, training, and stakeholder alignment are the other 80%. Ignore this at your peril!

**⚠️ Watch Out For:** Designing for the org chart, not the reality. What looks good in a process diagram often breaks when it meets actual human behavior.

---

## 📊 Domain Comparison Table

| Aspect | Software | Manufacturing | Fashion | Aerospace | Enterprise |
|--------|----------|---------------|---------|-----------|------------|
| **Primary Output** | Code/Apps | Physical Parts | Garments | Systems/Components | Processes/Frameworks |
| **Maker Focus** | Functionality | CAD/Tooling | Design/Pattern | Engineering | Solution Design |
| **Validator Focus** | Bugs/Security | Tolerances/Quality | Fit/Construction | Safety/Compliance | Risk/Controls |
| **Aligner Focus** | User Needs | Cost/Schedule | Market/Trends | Mission Success | Adoption/Change |
| **Typical Timeline** | Weeks-Months | Days-Weeks | Months-Seasons | Months-Years | Weeks-Months |
| **Key Risk** | Scope Creep | Tolerance Stack | Production Issues | Certification | Resistance |
| **Success Metric** | Ship Date | Defect Rate | Sell-through | Flight Hours | Adoption Rate |

---

## 🎯 "When to Use Which" Guide

### Choose SOFTWARE when:
- You're building something digital
- Code is the deliverable
- You need automation or data processing
- Users interact through screens

### Choose MANUFACTURING when:
- Physical parts are involved
- Tolerances and materials matter
- Production volume is a consideration
- You need something you can hold

### Choose FASHION when:
- Clothing or accessories are involved
- Fabric and fit are critical
- You're thinking in "collections" or "seasons"
- Aesthetics and trend matter

### Choose AEROSPACE when:
- Safety-critical systems are involved
- Certification is required
- Failure has serious consequences
- You're working within regulatory frameworks

### Choose ENTERPRISE when:
- Processes and people are the focus
- Change management is needed
- Stakeholder alignment is critical
- The solution is organizational, not technical

---

## 🔀 Domain Hybrid Scenarios

Sometimes projects span multiple domains. Here's how to handle it:

| Scenario | Primary Domain | Secondary Domain | Notes |
|----------|---------------|------------------|-------|
| E-commerce fashion site | Software | Fashion | Build the platform, understand the products |
| Smart factory system | Manufacturing | Software | Physical + Digital = Industry 4.0 |
| Drone delivery service | Aerospace | Enterprise | Tech + Business model + Regulation |
| Fashion ERP system | Software | Fashion + Enterprise | Platform for industry-specific processes |
| Aircraft interior design | Aerospace | Fashion | Safety-critical but also aesthetic |

When in doubt, start with the domain that matches your core deliverable. The system can always incorporate elements from other domains as needed.

---

**Ready to start your project?** Head back to the [overview](./01-Overview.md) or dive into [how to invoke the system](./03-Invocation.md)!
