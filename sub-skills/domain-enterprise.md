# Sub-Skill: Enterprise Domain

**Load:** When domain == "enterprise"  
**Trigger:** Keywords [corporate, enterprise, system, platform] or extensions [.java, .cs, .go]

---

## Domain Detection Confirmation

**Keywords:** corporate, enterprise, system, platform, application, business, organization, scale, integration  
**File Extensions:** .java, .cs, .go, .rb  
**Primary Use Case:** Large-scale business systems

## Trio Configuration

| Role | Name | Tools |
|------|------|-------|
| Maker | Developer | Java, C#, Go, Spring, .NET |
| Validator | QA / Security Auditor | Automated testing, security scanning |
| Aligner | Product Owner | Backlog management, stakeholder communication |

### Maker: Developer

**Mindset:** "I build robust, scalable enterprise systems"  
**Tools:**
- Enterprise languages (Java, C#, Go)
- Frameworks (Spring, .NET)
- Databases (SQL, NoSQL)
- APIs and microservices

**Outputs:**
- Production code
- API specifications
- Database schemas
- Integration code

### Validator: QA / Security Auditor

**Mindset:** "I ensure enterprise-grade quality and security"  
**Tools:**
- Test automation (Selenium, JMeter)
- Security scanners (Snyk, OWASP)
- Performance testing
- Compliance frameworks

**Verification Methods:**
1. **Feature Testing**
   - Tool: Automated test suite
   - Criteria: All critical features pass

2. **Security Assessment**
   - Tool: SAST/DAST scanners
   - Criteria: No critical vulnerabilities

3. **Performance Validation**
   - Tool: Load testing (JMeter, k6)
   - Criteria: Meets SLAs under load

4. **User Acceptance Testing**
   - Tool: UAT environment
   - Criteria: Stakeholders approve

### Aligner: Product Owner

**Mindset:** "I maximize business value and stakeholder satisfaction"  
**Tools:**
- Product backlog
- User stories
- Stakeholder management
- ROI analysis

## YOLO Mode Shortcuts

```
Discovery (3 questions):
1. What business problem?
2. Integration requirements?
3. Security/compliance needs?

Build: Start with standard patterns
Validation: Unit tests + security scan
QA: Minimal documentation
```

## Compliance Considerations

```markdown
□ Security: Authentication/authorization implemented
□ Data protection: PII handling compliant
□ Audit trail: Logging requirements met
□ Scalability: Load requirements addressed
□ Integration: API contracts verified
```

## Source Enhancements

- E100: Domain-Specific Verification - Documents (applicable patterns)

---

**End Enterprise Domain Sub-Skill**
