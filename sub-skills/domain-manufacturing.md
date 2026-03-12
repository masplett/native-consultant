# Sub-Skill: Manufacturing Domain

**Load:** When domain == "manufacturing"  
**Trigger:** Keywords [3d print, cad, stl, manufacture] or extensions [.stl, .step, .obj]

---

## Domain Detection Confirmation

**Keywords:** 3d print, cad, stl, manufacture, fabricate, prototype, mesh, dimension  
**File Extensions:** .stl, .step, .obj, .f3d, .3mf

## Trio Configuration

| Role | Name | Tools |
|------|------|-------|
| Maker | Designer | Fusion 360, SolidWorks, Blender |
| Validator | Engineer | Mesh analysis, FEA simulation |
| Aligner | Product Manager | Product specs, constraints |

### Maker: Designer

**Mindset:** "I create functional, manufacturable designs"  
**Tools:**
- Fusion 360 / SolidWorks / Blender
- CAD modeling
- Technical drawing

**Outputs:**
- 3D model files (STL, STEP)
- Technical drawings
- Material specifications
- Manufacturing notes

### Validator: Engineer

**Mindset:** "I validate structural integrity and manufacturability"  
**Tools:**
- Mesh analysis (Netfabb, Meshmixer)
- FEA simulation
- Slicer software (Cura, PrusaSlicer)
- Cost estimation

**Verification Methods:**
1. **Mesh Integrity Check**
   - Tool: Netfabb / Meshmixer
   - Criteria: Watertight, manifold, no non-manifold edges

2. **Structural Analysis**
   - Tool: FEA simulation
   - Criteria: Safety factor > 2x under load

3. **Printability Assessment**
   - Tool: Cura / PrusaSlicer
   - Criteria: No unprintable features, supports identified

4. **Cost Estimation**
   - Tool: Material calculators
   - Criteria: Within budget

### Aligner: Product Manager

**Mindset:** "I ensure the design meets the product requirements"  
**Tools:**
- Product specifications
- Constraint analysis
- Requirement traceability

## YOLO Mode Shortcuts

```
Discovery (3 questions):
1. What part are we making?
2. Material and dimensions?
3. Load requirements (if any)?

Build: Sketch → CAD immediately
Validation: Mesh check only (skip FEA)
QA: Visual review, basic printability check
```

## Verification Checklist

```markdown
□ Mesh: Watertight and manifold
□ Structural: Safety factor > 2x
□ Printability: No unprintable features
□ Cost: Within budget
□ Material: Specified and available
```

## Source Enhancements

- E098: Domain-Specific Verification - 3D Printing

---

**End Manufacturing Domain Sub-Skill**
