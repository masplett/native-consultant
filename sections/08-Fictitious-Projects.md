# Section 8: Fictitious Project Examples

> 📖 **Purpose**: Concrete walkthroughs showing the Consultancy Skill in action across diverse domains. These stories demonstrate real-world application of the 6-phase workflow.

---

## Overview

The following five projects illustrate how the Consultancy Skill adapts to different domains, complexities, and user needs. Each story includes:

- **Complete session transcripts** (terminal format)
- **Decision points and gates** with reasoning
- **Mode selection** (consult / explore / fast-track)
- **Emotional journey** (frustration, breakthrough, success)
- **Time estimates vs. actual** delivery

---

## PROJECT 1: "The Wedding Dress Dilemma" 🎭

**Domain**: Fashion/Textile  
**Complexity**: Medium  
**Timeline**: 3 months  
**Budget**: $5,000 USD  
**Location**: Rural Montana, USA  

### Character Profile

**Sarah Chen**, 28, is getting married in September. She lives two hours from the nearest city and has struggled to find affordable custom dress options. Her Pinterest board is full of lace A-line gowns with vintage touches, but every bridal shop she's contacted quoted $8,000+ and required multiple in-person fittings.

### 🎬 Scene 1: Discovery

```
┌─────────────────────────────────────────────────────────────┐
│  KIMI CLI - Consultancy Mode                               │
│  Version: consultancy-skill v6.1                            │
└─────────────────────────────────────────────────────────────┘

user@wedding-dreams:~$ kimi consult fashion

🎭 CONSULTANCY SKILL ACTIVATED
Domain: fashion
Mode: CONSULT (Full Discovery)

─────────────────────────────────────────────────────────────
PHASE 1: DISCOVERY
─────────────────────────────────────────────────────────────

Sarah: I need a wedding dress but I'm overwhelmed. I live in rural
Montana and the nearest bridal shop is 2 hours away. They want 
$8,000+ and I only have $5,000. Is this even possible?

AI: First, congratulations on your engagement! 💍 What you're 
describing is absolutely solvable. I've helped many clients with 
geographic and budget constraints. Let me ask a few questions to 
understand your vision.

[STATUS: DISCOVERY ACTIVE | Time: 00:03:12]

AI: Tell me about your dream dress. I see you mentioned Pinterest -
what specific elements are you drawn to? Silhouette, fabric, 
embellishments?

Sarah: I love A-line dresses with lace overlays. Vintage-inspired 
but not costume-y. I want to feel elegant, not trendy. My 
grandmother had pearl buttons on her dress - maybe something like 
that as a nod to her?

AI: That's beautiful - honoring family while making it yours. 
What's your timeline and actual wedding date?

Sarah: Wedding is September 15th. So... about 3 months.

AI: Three months is tight but doable for the right approach. What's 
your actual budget ceiling? You mentioned $5,000 - is that firm or 
is there flexibility if we find something perfect?

Sarah: $5,000 is pretty firm. I could maybe stretch to $5,500 if 
it's truly perfect, but I'd rather not.

AI: Understood. Now, the geographic challenge - are you willing to 
travel for fittings, or do we need a solution that minimizes 
travel? And what's your body measurements situation - have you 
been professionally measured, or would we be self-measuring?

Sarah: I can travel maybe once, twice max. And no professional 
measurements yet - I was going to do that at the bridal shop but 
then I saw their prices.

[STATUS: DISCOVERY COMPLETE | Insights: 7 captured]

AI: Excellent. I have enough to create your REQUIREMENTS.md. 
Let me synthesize what I've learned...
```

### 📋 REQUIREMENTS.md Generated

```markdown
# Wedding Dress Project - Requirements Document

## Client Profile
- **Name**: Sarah Chen
- **Event**: Wedding, September 15th
- **Location**: Rural Montana (2h from nearest city)
- **Budget**: $5,000 USD (firm ceiling: $5,500)

## Vision Statement
Vintage-inspired A-line wedding dress with lace overlay, pearl 
button details (family homage), elegant and timeless rather than 
trendy.

## Hard Constraints
- Timeline: 3 months (12 weeks)
- Budget: $5,000 maximum
- Travel: Maximum 2 trips for fittings
- Measurements: Self-measurement required initially

## Quality Requirements
- Professional construction
- Lace that photographs well
- Comfortable for 8-hour wear
- Alterations possible if weight changes

## Risk Factors
- ⚠️ Timeline is aggressive
- ⚠️ Remote location limits options
- ⚠️ Self-measurement accuracy
```

### 🎬 Scene 2: Design Review

```
─────────────────────────────────────────────────────────────
PHASE 2: DESIGN REVIEW
─────────────────────────────────────────────────────────────

[STATUS: DESIGN ACTIVE | Validator standing by]

AI: Sarah, I've developed three approaches for your dress. Each 
has trade-offs. Let me present them:

┌────────────────────────────────────────────────────────────┐
│ OPTION A: Local Tailor Partnership                          │
├────────────────────────────────────────────────────────────┤
│ • Find experienced seamstress within 1-hour radius          │
│ • Source fabric/lace online together                        │
│ • 3-4 in-person fittings                                    │
│ • Budget: $3,500-$4,500                                     │
│ • Timeline: 10 weeks (buffer built in)                      │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Personal relationship, easy alterations, supports   │
│    local business                                            │
│ ⚠️ CONS: Limited to their skill level, may need to settle    │
│    on less complex design                                    │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION B: Online Custom Platform                            │
├────────────────────────────────────────────────────────────┤
│ • Use service like Anomalie or eShakti                      │
│ • Virtual consultations, mail-order fittings                │
│ • Professional construction, proven process                 │
│ • Budget: $4,000-$5,500                                     │
│ • Timeline: 8-12 weeks (depends on backlog)                 │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Professional results, handles logistics, reviews    │
│ ⚠️ CONS: Less personal, potential communication gaps,        │
│    shipping risks                                            │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION C: Hybrid Approach (RECOMMENDED)                     │
├────────────────────────────────────────────────────────────┤
│ • Purchase quality sample/second-hand base dress ($800-1500)│
│ • Commission local alterations specialist for customization │
│ • Add lace overlay, pearl buttons, personalization          │
│ • Budget: $2,500-$4,000                                     │
│ • Timeline: 6-8 weeks                                       │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Cost-effective, unique result, supports local,      │
│    faster timeline, built-in fitting sessions               │
│ ⚠️ CONS: Requires finding right base dress, coordination     │
│    between sourcing and alterations                         │
└────────────────────────────────────────────────────────────┘

Sarah: The hybrid option sounds interesting... but where would I 
find a base dress? And what if it doesn't work out?

AI: Great questions. For the base dress, I'd recommend: Stillwhite
(pre-owned designer), sample sales at bridal shops (call the ones 
2 hours away - they often sell samples), or BHLDN's online outlet. 
The key is finding a structured A-line in your approximate size.

As for risk mitigation - we'd build in a "decision gate" at week 2.
If we haven't found a suitable base dress by then, we pivot to 
Option B (online custom) which still meets your timeline.

[ACTIVE: Validator checking constraints... ✓ All options within budget]

Sarah: I like that there's a backup plan. Let's do the hybrid 
approach.

[VERIFY: Design selection recorded | ALIGN: Client confirmed]
```

### 🎬 Scene 3: Build Phase

```
─────────────────────────────────────────────────────────────
PHASE 3: BUILD
─────────────────────────────────────────────────────────────

[STATUS: BUILD ACTIVE | Checkpoint 1/4]

AI: Perfect! Let's create your action plan. I'm building your 
Dress Specification Package now.

Week 1-2 Tasks:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ 1. Professional Measurements
   → Schedule at alteration shop in [Nearest City]
   → Bring: Camisole, heels you'll wear, any undergarments
   → Request: Full bridal measurement chart

□ 2. Base Dress Search
   → Daily checks: Stillwhite, Poshmark, local sample sales
   → Target specs: A-line, size 8-10, structured bodice
   → Budget: $800-1,500
   → Keywords: "A-line lace wedding dress vintage"

□ 3. Alteration Specialist Research
   → Search: "bridal alterations [Your County]"
   → Interview questions included in package
   → Target: 3 quotes by end of week 2

[CHECKPOINT 1 COMPLETE] Decision Gate: Proceed if base dress found

Week 3-6 Tasks (Conditional):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ 4. Purchase Pearl Buttons (Etsy vintage - $15-30)
□ 5. Source additional lace if needed (LaceMarket.com)
□ 6. First fitting with base dress + specialist
□ 7. Design finalization meeting

[CHECKPOINT 2 COMPLETE] Decision Gate: Design approved

Week 7-10 Tasks:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ 8. Construction/alterations in progress
□ 9. Second fitting (mid-point)
□ 10. Final fitting + pickup
□ 11. Professional pressing/steaming

[CHECKPOINT 3 COMPLETE] Decision Gate: Quality validation

Sarah: This is so organized! I feel less overwhelmed already.
```

### 🎬 Scene 4: Validation Review

```
─────────────────────────────────────────────────────────────
PHASE 4: VALIDATION REVIEW
─────────────────────────────────────────────────────────────

[STATUS: VALIDATION ACTIVE | Evidence collection]

AI: Before we finalize, let's validate our plan. I'm creating 
your fitting checklist and quality gates.

VALIDATION CHECKLIST - Wedding Dress

□ Construction Quality
  □ Seams are straight and secure
  □ Zipper operates smoothly
  □ Hem is even when wearing wedding shoes
  □ No loose threads or unfinished edges

□ Fit & Comfort
  □ Can sit comfortably for 30+ minutes
  □ Can raise arms to hug (test this!)
  □ Can walk up/down stairs
  □ Breathing is comfortable (not restrictive)
  □ Length is appropriate (doesn't drag, doesn't show shoes)

□ Design Requirements
  □ A-line silhouette maintained
  □ Lace overlay properly attached
  □ Pearl buttons present and secure
  □ Vintage aesthetic achieved

□ Photography Test
  □ Take photos in natural light (phone is fine)
  □ Check lace detail visibility
  □ Verify silhouette reads well on camera

□ Emergency Preparedness
  □ Identified emergency seamstress contact
  □ Have fashion tape on hand
  □ Someone knows how to bustle the dress

Sarah: The photography test is smart - I wouldn't have thought of 
that. My friend had a dress that looked odd in photos even though 
it looked fine in person.

[VERIFY: All validation criteria defined | ALIGN: Client agrees]
```

### 🎬 Scene 5: QA Phase

```
─────────────────────────────────────────────────────────────
PHASE 5: QA (Quality Assurance)
─────────────────────────────────────────────────────────────

[STATUS: QA ACTIVE | Final review]

AI: Sarah, we're at the final quality gate. Let me review 
everything before delivery:

QA REVIEW RESULTS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Documentation Quality:    ✅ COMPLETE
- REQUIREMENTS.md         ✅ All constraints documented
- DESIGN.md               ✅ 3 options presented, 1 selected
- TIMELINE.md             ✅ 10-week schedule with gates
- VENDOR_LIST.md          ✅ Research templates included

Risk Mitigation:          ✅ ADDRESSED
- Timeline buffer         ✅ 2-week buffer built in
- Budget contingency      ✅ $1,000 under maximum
- Backup plan             ✅ Option B documented
- Quality gates           ✅ 3 checkpoints defined

Client Understanding:     ✅ VERIFIED
- Sarah can articulate the plan
- Decision gates understood
- Communication channels established

[VERIFY: QA PASSED | Ready for delivery]
```

### 🎬 Scene 6: Delivery

```
─────────────────────────────────────────────────────────────
PHASE 6: DELIVERY
─────────────────────────────────────────────────────────────

[STATUS: DELIVERY ACTIVE | Package assembly]

AI: 🎉 Sarah, your Wedding Dress Project Package is ready!

DELIVERABLES:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 wedding-dress-project/
├── 📄 REQUIREMENTS.md          (Your vision, constraints)
├── 📄 DESIGN.md                (3 approaches, decision log)
├── 📄 TIMELINE.md              (Week-by-week breakdown)
├── 📄 VENDOR_RESEARCH.md       (Templates for your search)
├── 📄 FITTING_CHECKLIST.pdf    (Print and bring to fittings)
├── 📄 MEASUREMENT_GUIDE.pdf    (How to take accurate measurements)
├── 📄 BUDGET_TRACKER.xlsx      (Expense tracking spreadsheet)
└── 📄 EMERGENCY_CONTACTS.md    (Seamstresses, resources)

BONUS MATERIALS:
• "Questions to Ask Your Alteration Specialist" (1-pager)
• "Sample Sale Hunting Guide" (tips for finding deals)
• "Wedding Day Dress Survival Kit" (what to pack)

Sarah: This is incredible! I went from panicking to having a 
clear plan. Thank you so much!

AI: You're going to look absolutely beautiful - and more 
importantly, you'll feel confident because you have a plan. 
Don't forget: the decision gate at week 2. If the base dress 
search isn't working, pivot to Option B without guilt.

Most importantly: Enjoy this process. Your dress is going to 
carry so much meaning with your grandmother's pearl button 
tribute. That's going to make for incredible photos and even 
better memories.

🎊 DELIVERY COMPLETE 🎊

═════════════════════════════════════════════════════════════
PROJECT METRICS
═════════════════════════════════════════════════════════════
Mode Used:        CONSULT (Full Discovery)
Session Duration: 47 minutes
Time Estimated:   10 weeks to completion
Actual Timeline:  TBD (project in progress)
Budget Utilized:  $2,800-$4,000 (projected)
Budget Saved:     ~$1,000-$2,200 vs. original quotes
Risk Level:       Medium → Low (with mitigation)
Client Confidence: 😰 Overwhelmed → 😊 Empowered
═════════════════════════════════════════════════════════════
```

### 📝 Lessons Learned - Wedding Dress Project

| Aspect | Insight |
|--------|---------|
| **Discovery Depth** | Emotional elements (grandmother's buttons) revealed true priorities |
| **Mode Selection** | CONSULT mode was correct - needed full exploration |
| **Design Innovation** | Hybrid approach saved 40% budget vs. traditional |
| **Risk Management** | Built-in pivot point prevented deadline disaster |
| **Client Emotion** | Organization reduced anxiety more than any single solution |

---

## PROJECT 2: "The Python Photo Renamer" 🐍

**Domain**: Software Development  
**Complexity**: Low-Medium  
**User**: Marcus, amateur photographer with 10,000+ photos  
**Goal**: Rename photos from IMG_XXXX.jpg to YYYY-MM-DD_Description.jpg

### 🎬 Scene 1: Fast-Track Activation

```
┌─────────────────────────────────────────────────────────────┐
│  KIMI CLI - Consultancy Mode                               │
│  Version: consultancy-skill v6.1                            │
└─────────────────────────────────────────────────────────────┘

user@photos:~$ kimi fast-track

🚀 FAST-TRACK MODE ACTIVATED
Skipping extended discovery. Minimal gates. Build-focused.

─────────────────────────────────────────────────────────────
QUICK DISCOVERY (3 questions max)
─────────────────────────────────────────────────────────────

Marcus: I have thousands of photos with useless names like 
IMG_0001.jpg. I want them renamed to include the date they 
were taken. Can you help me write a Python script?

AI: Absolutely! This is a perfect fast-track project. Three 
quick questions:

1. What format do you want? (e.g., "2024-03-15_BeachTrip.jpg")
2. Are the dates in EXIF data, or file creation dates?
3. Any photos without dates - what should happen to those?

Marcus: 
1. YYYY-MM-DD format, keep original number after: 
   "2024-03-15_IMG0001.jpg"
2. EXIF data preferred, fallback to file date
3. Skip them with a warning list

[STATUS: DISCOVERY COMPLETE - 2 minutes]

AI: Perfect. I have everything I need. Building your script now...
```

### 🎬 Scene 2: Design & Build (Combined)

```
─────────────────────────────────────────────────────────────
DESIGN → BUILD (Fast-Track Pipeline)
─────────────────────────────────────────────────────────────

[STATUS: BUILDING | Checkpoint auto-approved]

AI: Design decisions made:
• Library: exifread for EXIF, os/pathlib for file ops
• Safety: Copy to new names, don't delete originals
• Error handling: Log failures, continue processing
• Testing: Process 5 photos first, verify, then batch

```python
#!/usr/bin/env python3
"""
Photo Renamer Script
Renames photos from IMG_XXXX.jpg to YYYY-MM-DD_IMGXXXX.jpg
Uses EXIF DateTimeOriginal, falls back to file modification date
"""

import os
import shutil
from pathlib import Path
from datetime import datetime
from typing import Optional, Tuple
import exifread

# Configuration
SOURCE_DIR = Path("./photos_to_rename")
OUTPUT_DIR = Path("./renamed_photos")
SUPPORTED_EXTENSIONS = {'.jpg', '.jpeg', '.png', '.tiff', '.tif'}


def get_exif_date(image_path: Path) -> Optional[datetime]:
    """Extract DateTimeOriginal from EXIF data."""
    try:
        with open(image_path, 'rb') as f:
            tags = exifread.process_file(f, details=False)
            
        # Try DateTimeOriginal first (when photo was taken)
        date_tag = tags.get('EXIF DateTimeOriginal') or tags.get('Image DateTime')
        
        if date_tag:
            # EXIF format: "2024:03:15 14:30:00"
            date_str = str(date_tag)
            return datetime.strptime(date_str, "%Y:%m:%d %H:%M:%S")
            
    except Exception as e:
        print(f"  EXIF read failed for {image_path.name}: {e}")
    
    return None


def get_file_date(image_path: Path) -> datetime:
    """Get file modification date as fallback."""
    mtime = os.path.getmtime(image_path)
    return datetime.fromtimestamp(mtime)


def extract_original_number(filename: str) -> str:
    """Extract numeric portion from original filename."""
    # Remove extension
    name = Path(filename).stem
    # Extract digits
    digits = ''.join(c for c in name if c.isdigit())
    return digits if digits else "0000"


def generate_new_name(image_path: Path) -> Tuple[str, datetime]:
    """Generate new filename based on date."""
    # Try EXIF first
    photo_date = get_exif_date(image_path)
    date_source = "EXIF"
    
    if photo_date is None:
        photo_date = get_file_date(image_path)
        date_source = "file date"
    
    # Format: YYYY-MM-DD_IMGXXXX.jpg
    date_prefix = photo_date.strftime("%Y-%m-%d")
    original_number = extract_original_number(image_path.name)
    new_name = f"{date_prefix}_IMG{original_number}{image_path.suffix.lower()}"
    
    return new_name, photo_date, date_source


def rename_photos():
    """Main processing function."""
    # Validate directories
    if not SOURCE_DIR.exists():
        print(f"❌ Source directory not found: {SOURCE_DIR}")
        return
    
    OUTPUT_DIR.mkdir(exist_ok=True)
    
    # Statistics
    processed = 0
    failed = 0
    skipped = 0
    no_date = []
    
    print(f"🔍 Scanning {SOURCE_DIR}...")
    image_files = [f for f in SOURCE_DIR.iterdir() 
                   if f.suffix.lower() in SUPPORTED_EXTENSIONS]
    
    print(f"📸 Found {len(image_files)} images to process\n")
    
    for image_path in sorted(image_files):
        print(f"Processing: {image_path.name}")
        
        try:
            new_name, photo_date, date_source = generate_new_name(image_path)
            new_path = OUTPUT_DIR / new_name
            
            # Handle duplicates
            counter = 1
            base_new_path = new_path
            while new_path.exists():
                stem = base_new_path.stem
                suffix = base_new_path.suffix
                new_path = OUTPUT_DIR / f"{stem}_{counter}{suffix}"
                counter += 1
            
            # Copy (safer than rename - preserves originals)
            shutil.copy2(image_path, new_path)
            
            print(f"  ✅ {new_name} (from {date_source})")
            processed += 1
            
        except Exception as e:
            print(f"  ❌ Failed: {e}")
            failed += 1
            no_date.append(image_path.name)
    
    # Summary
    print("\n" + "="*50)
    print("📊 PROCESSING COMPLETE")
    print("="*50)
    print(f"✅ Successfully renamed: {processed}")
    print(f"⚠️  Failed: {failed}")
    print(f"📁 Output directory: {OUTPUT_DIR.absolute()}")
    
    if no_date:
        print(f"\n⚠️  Files with issues (saved to failed_files.txt):")
        with open(OUTPUT_DIR / "failed_files.txt", 'w') as f:
            for name in no_date:
                f.write(f"{name}\n")
                print(f"   - {name}")


if __name__ == "__main__":
    print("📷 Photo Renamer Script")
    print("="*50)
    
    # Safety confirmation for large batches
    image_count = len([f for f in SOURCE_DIR.iterdir() 
                       if f.suffix.lower() in SUPPORTED_EXTENSIONS])
    
    if image_count > 100:
        confirm = input(f"\n⚠️  Found {image_count} images. Test with 5 first? [Y/n]: ")
        if confirm.lower() != 'n':
            print("\n🧪 TEST MODE: Processing first 5 images only...")
            # Override for test
            original_iterdir = SOURCE_DIR.iterdir
            all_files = sorted([f for f in SOURCE_DIR.iterdir() 
                               if f.suffix.lower() in SUPPORTED_EXTENSIONS])[:5]
            # Process test batch
            for image_path in all_files:
                print(f"\nTest: {image_path.name}")
                try:
                    new_name, photo_date, date_source = generate_new_name(image_path)
                    print(f"  Would rename to: {new_name}")
                    print(f"  Date source: {date_source}")
                except Exception as e:
                    print(f"  Error: {e}")
            
            full_run = input("\nProceed with full batch? [y/N]: ")
            if full_run.lower() != 'y':
                print("Cancelled. Adjust SOURCE_DIR and run again.")
                exit(0)
    
    rename_photos()
```

[CHECKPOINT: Code written | Waiting for validation...]
```

### 🎬 Scene 3: Validation

```
─────────────────────────────────────────────────────────────
VALIDATION (Fast-Track)
─────────────────────────────────────────────────────────────

[STATUS: VALIDATION ACTIVE | Test with sample]

Marcus: The code looks good! Can I test it?

AI: Absolutely. Here's your validation protocol:

VALIDATION STEPS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. SETUP TEST ENVIRONMENT
   mkdir test_photos
   cp ~/Pictures/IMG_00*.jpg test_photos/  # Copy 10-20 photos

2. INSTALL DEPENDENCY
   pip install exifread

3. RUN TEST BATCH
   python photo_renamer.py
   → Select "Y" to test with 5 photos first

4. VERIFY OUTPUT
   Check test_photos/renamed_photos/ directory
   Confirm dates look correct
   Confirm original photos are untouched

5. FULL RUN
   Update SOURCE_DIR to your actual photos directory
   Run again, select full batch

Marcus: Testing now... it worked! The dates are correct and 
my originals are safe. This is exactly what I needed.

[VERIFY: ✅ Test passed | ALIGN: Client satisfied]
```

### 🎬 Scene 4: Delivery

```
─────────────────────────────────────────────────────────────
DELIVERY
─────────────────────────────────────────────────────────────

[STATUS: DELIVERY | Package complete]

AI: 🎉 Your Photo Renamer is ready!

DELIVERABLES:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 photo-renamer-project/
├── 📄 photo_renamer.py       (Main script - 150 lines)
├── 📄 README.md              (Usage instructions)
├── 📄 requirements.txt       (pip install -r requirements.txt)
└── 📁 evidence/
    ├── 📄 test_log.txt       (Validation run output)
    └── 📄 sample_output/     (Before/after examples)

USAGE:
1. pip install -r requirements.txt
2. Edit SOURCE_DIR and OUTPUT_DIR in photo_renamer.py
3. python photo_renamer.py
4. Verify renamed_photos/ contents
5. Delete originals when confident

SAFETY FEATURES BUILT IN:
✓ Copies instead of moves (preserves originals)
✓ Duplicate handling (adds _1, _2, etc.)
✓ Test mode for large batches
✓ Failed files logged for review

Marcus: This is perfect. You saved me weeks of manual work!

AI: Happy to help! Pro tip: Run it on a small batch first, 
then gradually increase. The EXIF library handles most cameras, 
but if you run into any edge cases, the fallback to file dates 
keeps things moving.

═════════════════════════════════════════════════════════════
PROJECT METRICS
═════════════════════════════════════════════════════════════
Mode Used:        FAST-TRACK (Minimal discovery)
Session Duration: 18 minutes
Time Estimated:   15 minutes to write script
Actual Timeline:  18 minutes (including validation)
Photos Processed: 10,000+ (user's actual batch)
Time Saved:       ~40 hours of manual renaming
Risk Level:       Very Low (copies, not moves)
═════════════════════════════════════════════════════════════
```

### 📝 Lessons Learned - Photo Renamer

| Aspect | Insight |
|--------|---------|
| **Fast-Track Suitability** | Well-defined scope + technical user = perfect for fast-track |
| **Safety First** | Copying vs. moving prevented potential disasters |
| **Test Mode** | Built-in testing for large batches caught edge cases |
| **Error Handling** | Graceful degradation (EXIF → file date) improved reliability |
| **Code Quality** | Even "quick" scripts deserve comments and structure |

---

## PROJECT 3: "The Rocket Fin Redesign" 🚀

**Domain**: Aerospace/Engineering  
**Complexity**: High  
**Client**: Central High Model Rocket Club  
**Challenge**: Fins breaking on landing; need stronger design

### 🎬 Scene 1: Domain Detection & Discovery

```
┌─────────────────────────────────────────────────────────────┐
│  KIMI CLI - Consultancy Mode                               │
│  Version: consultancy-skill v6.1                            │
└─────────────────────────────────────────────────────────────┘

user@rocket-club:~$ kimi consult

🎭 CONSULTANCY SKILL ACTIVATED
Analyzing input for domain detection...

🔍 DOMAIN DETECTED: AEROSPACE (Engineering)
Confidence: 94%
Keywords: rocket, fin, landing, stress, material

─────────────────────────────────────────────────────────────
PHASE 1: DISCOVERY
─────────────────────────────────────────────────────────────

Mr. Henderson (Club Advisor): I'm the faculty advisor for Central 
High's model rocket club. We've got a problem - our rocket fins 
keep breaking when the parachute doesn't deploy properly. Last 
month we lost three fins on hard landings. The students are 
frustrated and we're burning through our budget.

AI: Model rocketry is a fantastic way to learn engineering 
principles! Let's get to the root of this. A few questions:

What's the typical altitude you're reaching? And what size/motor 
class are we talking about - Estes A-D motors, or something larger?

Mr. Henderson: We're flying on E and F motors now. Altitudes 
around 800-1200 feet. The issue is when the parachute doesn't 
fully deploy or gets tangled - those fins hit the ground at 
terminal velocity and snap right off.

AI: That makes sense - E and F motors give you serious velocity. 
What material are the current fins made from, and how are they 
attached to the body tube?

Mr. Henderson: Balsa wood, attached with wood glue and paper 
fillets. Standard construction from the kit.

AI: Classic approach, but balsa has its limits. What's your 
weight budget looking like? Competition rules or just club flights?

Mr. Henderson: No competition restrictions - this is just for 
our club launches. But we do need to stay under the NAR safety 
code weight limits for the motor class. And budget is tight - 
we're a public high school.

[STATUS: DISCOVERY ACTIVE | Engineering requirements forming]

AI: Safety code compliance is non-negotiable. What tools do you 
have access to for fabrication? Laser cutter, 3D printer, or 
just hand tools?

Mr. Henderson: We have access to the school's maker space - 
3D printer, laser cutter, basic hand tools. No CNC or composites 
oven though.

AI: That's actually a great setup. Last question - when you 
say "budget is tight," what are we talking about per fin set? 
And how many rockets are we looking to retrofit?

Mr. Henderson: Ideally under $10 per fin set, and we have 8 
rockets that need the upgrade.

[STATUS: DISCOVERY COMPLETE | 9 insights captured]
```

### 📋 REQUIREMENTS.md Generated

```markdown
# Rocket Fin Redesign - Engineering Requirements

## Project Context
- **Client**: Central High Model Rocket Club
- **Contact**: Mr. Henderson (Faculty Advisor)
- **Fleet Size**: 8 rockets requiring retrofit

## Performance Requirements
- **Motor Class**: E-F (mid-power)
- **Altitude**: 800-1,200 feet AGL
- **Velocity**: Up to 200+ mph (transonic possible)
- **Recovery**: Parachute deployment (unreliable)

## Hard Constraints
- **Budget**: <$10 per fin set ($80 total)
- **Weight**: Must maintain NAR safety code compliance
- **Tools Available**: 3D printer, laser cutter, hand tools
- **No Access To**: Composites oven, CNC, vacuum bagging

## Failure Mode
Hard landing impact causing fin separation/breakage at 
root attachment point.

## Quality Requirements
- Withstand 50G deceleration on hard landing
- Maintain aerodynamic stability during ascent
- Repairable in field conditions
- Student-fabricatable
```

### 🎬 Scene 2: Design Review

```
─────────────────────────────────────────────────────────────
PHASE 2: DESIGN REVIEW
─────────────────────────────────────────────────────────────

[STATUS: DESIGN ACTIVE | Engineering analysis]

AI: I've analyzed your requirements. The problem isn't just 
material strength - it's the attachment geometry. Balsa fails 
in shear at the glue joint. Here are three approaches:

┌────────────────────────────────────────────────────────────┐
│ OPTION A: Fiberglass Reinforced Balsa (Hybrid)            │
├────────────────────────────────────────────────────────────┤
│ • Balsa core with fiberglass skin (epoxy layup)           │
│ • Through-the-wall (TTW) mounting                         │
│ • Cost: ~$6/fin set                                       │
│ • Strength: 4x improvement                                │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Lightest option, proven technique, field-repair   │
│ ⚠️ CONS: Epoxy work is messy, cure time, skill required    │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION B: 3D Printed PETG Fins (Additive)                 │
├────────────────────────────────────────────────────────────┤
│ • Solid or honeycomb infill PETG                          │
│ • Integrated mounting bracket                             │
│ • Cost: ~$3/fin set (filament cost only)                  │
│ • Strength: 6x improvement                                │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Cheapest, repeatable, no curing time, precise     │
│ ⚠️ CONS: Heavier than balsa, layer adhesion failure mode   │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION C: G10 Fiberglass Plate (Sheet)                    │
├────────────────────────────────────────────────────────────┤
│ • Laser-cut G10 sheet (0.062" thickness)                  │
│ • Slot-mounted construction                               │
│ • Cost: ~$8/fin set                                       │
│ • Strength: 10x improvement                               │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Maximum strength, professional grade, TTW mounting│
│ ⚠️ CONS: Most expensive, dust is hazardous, needs sealing  │
└────────────────────────────────────────────────────────────┘

Mr. Henderson: The 3D printed option is appealing for cost, 
but I'm worried about the weight. How much heavier are we 
talking?

AI: Great question. Let me break down the mass budget:

MASS ANALYSIS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Balsa fins (typical):           ~8 grams per fin
3D printed PETG (solid):        ~22 grams per fin  
3D printed PETG (15% infill):   ~12 grams per fin
G10 fiberglass (0.062"):         ~15 grams per fin

For a 3-fin rocket, you're looking at:
• Balsa: 24g  • PETG (hollow): 36g  • G10: 45g

The NAR limit for an F motor rocket is 1,500g. Even with PETG, 
you're well within limits. The question is: how's your stability 
margin currently?

Mr. Henderson: Our stability is around 1.5 calibers. I think 
we could handle slightly heavier fins, especially if they're 
further back.

[ACTIVE: Validator checking safety constraints...]

AI: I recommend Option B (3D printed) with a hybrid approach:
• 20% infill for weight savings
• Increased fin span to move CP back
• This actually *improves* stability while adding strength

[VERIFY: Design selection | ALIGN: Safety validated]

Mr. Henderson: Let's do it. The students will love using the 
3D printer too - educational bonus.
```

### 🎬 Scene 3: Build Phase

```
─────────────────────────────────────────────────────────────
PHASE 3: BUILD
─────────────────────────────────────────────────────────────

[STATUS: BUILD ACTIVE | Creating specifications]

AI: Excellent choice. I'm creating your complete fabrication 
package. This includes CAD files, print settings, and assembly 
guides.

FABRICATION PACKAGE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📐 CAD SPECIFICATIONS

Fin Design Parameters:
• Airfoil: Symmetric diamond, 3:1 aspect ratio
• Root chord: 4 inches
• Tip chord: 2 inches  
• Span: 2.5 inches
• Thickness: 3mm (printable without supports)
• Mounting: Through-the-wall slots + screw backup

Print Settings (PETG):
• Layer height: 0.2mm
• Infill: 20% gyroid (strongest for impact)
• Perimeters: 3
• Top/bottom layers: 4
• Print temperature: 235°C
• Bed temperature: 70°C
• Fan: 30% (for layer adhesion)

[CHECKPOINT 1: Design finalized]

ASSEMBLY INSTRUCTIONS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Step 1: Body Tube Preparation
□ Mark fin locations (120° spacing)
□ Cut slots using fin template provided
□ Sand edges smooth

Step 2: Fin Installation  
□ Test fit fins in slots
□ Apply epoxy to root edge
□ Insert fins, ensure 90° alignment
□ Use fin guide jig during cure

Step 3: Reinforcement
□ Apply epoxy fillet on each side
□ Optional: Add fiberglass tape over joint
□ Let cure 24 hours minimum

[CHECKPOINT 2: Assembly guide complete]

QUALITY CONTROL CHECKLIST:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ Fin alignment within 1° of body axis
□ All three fins equally spaced (±2°)
□ No wobble when spun on rod
□ Surface smooth (sand if needed)
□ Weight recorded (target: <40g per fin set)
```

### 🎬 Scene 4: Validation Review

```
─────────────────────────────────────────────────────────────
PHASE 4: VALIDATION REVIEW
─────────────────────────────────────────────────────────────

[STATUS: VALIDATION ACTIVE | Safety critical]

AI: Before we finalize, let's validate our design with 
engineering analysis and safety protocols.

ENGINEERING VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

STRESS ANALYSIS (simplified):
• Impact force (50G deceleration): ~100N
• PETG yield strength: ~50 MPa
• Cross-section at root: 30mm × 3mm = 90mm²
• Stress at root: 100N / 90mm² = 1.1 MPa
• Safety factor: 45:1 ✓

STABILITY ANALYSIS:
• Original CP location: 12 inches from nose
• New CP location: 13.5 inches from nose (larger fins)
• CG with motor: 8 inches from nose
• Stability margin: 2.1 calibers (improved from 1.5) ✓

SAFETY VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Pre-Flight Checklist:
□ Fins secure (no wobble)
□ No cracks or delamination visible
□ Launch rod clearance verified
□ Recovery system tested separately
□ NAR safety code reviewed

Flight Test Protocol:
1. First flight: B motor (low altitude test)
2. Second flight: D motor (medium altitude)
3. Full flight: F motor (full performance)
4. Hard landing test: Intentional ballistic recovery

Mr. Henderson: The safety factor of 45:1 is impressive. And I 
like the graduated testing protocol.

[VERIFY: All validations passed | ALIGN: Safety confirmed]
```

### 🎬 Scene 5: Delivery

```
─────────────────────────────────────────────────────────────
PHASE 5 & 6: QA & DELIVERY
─────────────────────────────────────────────────────────────

[STATUS: DELIVERY | Package assembly]

AI: 🚀 Your Rocket Fin Redesign Package is complete!

DELIVERABLES:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 rocket-fin-redesign/
├── 📄 REQUIREMENTS.md
│   └── Engineering specs, constraints, quality criteria
├── 📄 DESIGN.md
│   └── 3 options with trade-off analysis
├── 📁 cad/
│   ├── fin_template.dxf        (Laser cutter ready)
│   ├── fin_body.stl            (3D printable fin)
│   └── assembly_jig.stl        (Alignment tool)
├── 📄 PRINT_SETTINGS.md
│   └── Slicer settings for PETG
├── 📄 ASSEMBLY_GUIDE.md
│   └── Step-by-step with photos
├── 📄 VALIDATION_REPORT.md
│   └── Stress analysis, safety factors
├── 📄 FLIGHT_TEST_PROTOCOL.md
│   └── Graduated testing plan
└── 📄 BILL_OF_MATERIALS.csv
    └── Cost breakdown: $2.40 per fin set

COST SUMMARY:
• Filament (1kg PETG): $20 → Makes 100+ fins
• Per fin set actual cost: $2.40
• Total for 8 rockets: $19.20
• Budget remaining: $60.80 (76% under budget!)

Mr. Henderson: This is incredible work. The students are going 
to learn so much from this process - not just about rockets, 
but about real engineering methodology.

AI: That's the best part of this project. The stronger fins 
are just the output - the real value is the engineering 
thinking your students will develop. Document the flights, 
measure the results, and you'll have data for next year's 
club to build on.

Safe flying! 🚀

═════════════════════════════════════════════════════════════
PROJECT METRICS
═════════════════════════════════════════════════════════════
Mode Used:        CONSULT (Engineering rigor required)
Session Duration: 52 minutes
Time Estimated:   2 weeks for fabrication
Actual Timeline:  TBD (project starting)
Budget Target:    $80
Budget Achieved:  $19.20 (76% savings!)
Safety Factor:    45:1 on fin attachment
Educational Value: High (full engineering workflow)
═════════════════════════════════════════════════════════════
```

### 📝 Lessons Learned - Rocket Fin Redesign

| Aspect | Insight |
|--------|---------|
| **Domain Expertise** | Aerospace requires explicit safety validation |
| **Design Trade-offs** | Sometimes "weaker" material with better geometry wins |
| **Educational Value** | Engineering process > final product for school clubs |
| **Budget Innovation** | 3D printing transformed cost structure |
| **Testing Protocol** | Graduated testing prevented costly failures |

---

## PROJECT 4: "The Coffee Shop POS" ☕

**Domain**: Enterprise Software  
**Complexity**: High  
**Client**: Maria, owner of "Bean There" café  
**Goal**: Replace paper tickets with digital POS + inventory

### 🎬 Scene 1: Discovery

```
┌─────────────────────────────────────────────────────────────┐
│  KIMI CLI - Consultancy Mode                               │
│  Version: consultancy-skill v6.1                            │
└─────────────────────────────────────────────────────────────┘

user@bean-there:~$ kimi consult

🎭 CONSULTANCY SKILL ACTIVATED
Domain detection: ENTERPRISE SOFTWARE

─────────────────────────────────────────────────────────────
PHASE 1: DISCOVERY
─────────────────────────────────────────────────────────────

Maria: I own a small coffee shop - "Bean There" - and we're 
still using paper tickets and a basic cash register. It's 
chaos during morning rush. I need a real POS system, but 
Square and Toast are too expensive for us. Can we build 
something?

AI: Absolutely! Custom POS systems are a great fit for 
small businesses when off-the-shelf solutions don't match 
your budget or workflow. Let's dig into your specific needs.

First, tell me about your operation. How many orders during 
morning rush? And how many staff need simultaneous access?

Maria: Morning rush is 7-9am, we do about 60-80 orders. I 
have 2 baristas plus me, so 3 stations need access. The 
problem is we run out of pastries and don't know until 
someone asks. And my inventory is just... I eyeball it.

AI: So inventory tracking is critical. What about offline 
capability? Do you have reliable internet, or do you need 
the system to work when it's down?

Maria: Internet goes out maybe once a month. We need to 
keep taking orders when that happens. And I need to see 
sales reports - what's selling, when, so I can schedule 
staff better.

[STATUS: DISCOVERY ACTIVE | Requirements complexity detected]

AI: Payment processing - are you planning to take cards 
through this system, or keep your existing terminal?

Maria: I'd love integrated payments, but honestly, I'll 
keep my Square terminal for now. Maybe upgrade later. 
What I really need is the order flow and inventory.

AI: Smart prioritization. Security-wise, any concerns 
about staff access levels? Should everyone see everything, 
or do you want manager-only functions?

Maria: Good point. Baristas should ring up orders and see 
inventory. Only I should see costs, reports, and change 
pricing. And I want to see who's doing what - like if 
orders get voided.

[STATUS: DISCOVERY COMPLETE | Complex requirements captured]
```

### 📋 REQUIREMENTS.md Generated

```markdown
# Bean There POS System - Requirements

## Business Context
- **Business**: "Bean There" café
- **Owner**: Maria
- **Staff**: 3 users (1 owner, 2 baristas)
- **Peak Volume**: 80 orders/hour

## Functional Requirements

### Order Management (P0 - Critical)
- [ ] Quick-order buttons (drink presets)
- [ ] Customization options (milk type, size, extras)
- [ ] Order queue display (kitchen view)
- [ ] Modification/void tracking

### Inventory Management (P0 - Critical)
- [ ] Real-time ingredient tracking
- [ ] Low-stock alerts
- [ ] Recipe-based depletion (latte = 2oz espresso + 8oz milk)
- [ ] Manual adjustment (waste, spillage)

### Reporting (P1 - Important)
- [ ] Daily sales summary
- [ ] Product popularity by hour
- [ ] Staff performance metrics
- [ ] Cost/profit analysis (manager only)

### Security (P1 - Important)
- [ ] Role-based access (barista vs manager)
- [ ] Action logging (who did what)
- [ ] End-of-day reconciliation

## Technical Requirements
- Offline-first architecture
- Sync when connection restored
- Tablet-friendly UI (iPad/Android)
- Local network deployment (no cloud dependency)
```

### 🎬 Scene 2: Design Review

```
─────────────────────────────────────────────────────────────
PHASE 2: DESIGN REVIEW
─────────────────────────────────────────────────────────────

[STATUS: DESIGN ACTIVE | Architecture decisions]

AI: This is a substantial project. Let me present architecture 
options that balance your needs with complexity.

┌────────────────────────────────────────────────────────────┐
│ OPTION A: Web-Based (PWA) with Local Storage              │
├────────────────────────────────────────────────────────────┤
│ • React/Vue frontend, runs in browser                     │
│ • IndexedDB for offline data                              │
│ • Node.js backend when online                             │
│ • Deploy: Raspberry Pi or old laptop                      │
│ • Cost: $0 (open source)                                  │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: No app store, works on any tablet, easy updates   │
│ ⚠️ CONS: Browser quirks, sync complexity, offline limits   │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION B: Desktop Application (RECOMMENDED)               │
├────────────────────────────────────────────────────────────┤
│ • Electron or Tauri cross-platform app                    │
│ • SQLite database (local, fast)                           │
│ • Built-in web server for tablets                         │
│ • Auto-sync between devices                               │
│ • Cost: $0 (open source)                                  │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Reliable offline, fast UI, professional feel      │
│ ⚠️ CONS: More complex build, requires installation         │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION C: Hybrid Cloud-Lite                               │
├────────────────────────────────────────────────────────────┤
│ • Supabase/Firebase backend                               │
│ • Local queue for offline                                 │
│ • Managed hosting ($15/month)                             │
│ • Professional reliability                                │
├────────────────────────────────────────────────────────────┤
│ ✅ PROS: Backups included, accessible anywhere, scales     │
│ ⚠️ CONS: Ongoing cost, internet dependency, data privacy   │
└────────────────────────────────────────────────────────────┘

Maria: Option B sounds right - I like that it works without 
internet. But how do the tablets connect to the main computer?

AI: Great question! Here's the architecture:

NETWORK ARCHITECTURE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

        ┌─────────────────┐
        │  Main Computer  │ ← Manager station (reports, admin)
        │  (Runs the app) │
        │   + Database    │
        └────────┬────────┘
                 │ WiFi
        ┌────────┴────────┐
        │                 │
   ┌────┴────┐      ┌────┴────┐
   │  iPad 1 │      │  iPad 2 │ ← Barista stations
   │ (Order) │      │ (Order) │
   └─────────┘      └─────────┘

• Main computer hosts the app + database
• Tablets connect via local WiFi (your existing router)
• No internet required for operation
• Optional: Cloud backup when internet available

[ACTIVE: Validator checking complexity...]

AI: I recommend a phased approach:
• Phase 1: Order management (1 week build)
• Phase 2: Inventory + recipes (1 week build)  
• Phase 3: Reporting + security (1 week build)
• Each phase delivers value, reduces risk

[VERIFY: Architecture approved | ALIGN: Phased approach accepted]

Maria: Phased makes sense. Let's start with orders.
```

### 🎬 Scene 3: Build Phase - Database Design

```
─────────────────────────────────────────────────────────────
PHASE 3: BUILD
─────────────────────────────────────────────────────────────

[STATUS: BUILD ACTIVE | Creating foundation]

AI: Starting with the database schema - this is the foundation 
everything builds on.

DATABASE SCHEMA (SQLite):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

```sql
-- Products (menu items)
CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT, -- 'coffee', 'pastry', 'merchandise'
    base_price DECIMAL(10,2),
    cost_price DECIMAL(10,2), -- for profit analysis
    is_active BOOLEAN DEFAULT 1,
    quick_order_key TEXT -- 'F1', 'F2', etc.
);

-- Product customizations (milk options, sizes, etc.)
CREATE TABLE modifiers (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price_adjustment DECIMAL(10,2),
    category TEXT -- 'milk', 'size', 'syrup'
);

-- Ingredients for inventory tracking
CREATE TABLE ingredients (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    unit TEXT, -- 'oz', 'each', 'lb'
    current_stock DECIMAL(10,2),
    min_stock DECIMAL(10,2), -- alert threshold
    cost_per_unit DECIMAL(10,2)
);

-- Recipe links (products consume ingredients)
CREATE TABLE recipes (
    product_id INTEGER,
    ingredient_id INTEGER,
    quantity DECIMAL(10,2),
    PRIMARY KEY (product_id, ingredient_id)
);

-- Orders
CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TEXT, -- 'open', 'completed', 'voided'
    total DECIMAL(10,2),
    user_id INTEGER, -- who created it
    payment_method TEXT,
    is_voided BOOLEAN DEFAULT 0,
    void_reason TEXT
);

-- Order items (line items)
CREATE TABLE order_items (
    id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    unit_price DECIMAL(10,2),
    modifiers TEXT -- JSON: {"milk": "oat", "size": "large"}
);

-- Users (staff)
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    pin TEXT, -- 4-digit login
    role TEXT, -- 'barista', 'manager'
    is_active BOOLEAN DEFAULT 1
);

-- Activity log (security/auditing)
CREATE TABLE activity_log (
    id INTEGER PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INTEGER,
    action TEXT, -- 'order_created', 'item_voided', etc.
    details TEXT
);
```

[CHECKPOINT 1: Database schema complete]
```

### 🎬 Scene 4: Build Phase - UI Wireframes

```
UI WIREFRAMES:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

┌─────────────────────────────────────────────────────────────┐
│  BARISTA ORDER SCREEN                                       │
├─────────────────────────────────────────────────────────────┤
│  [Latte] [Cappuccino] [Americano] [Espresso]               │
│  [Mocha] [Cold Brew] [Tea]      [Pastries]                 │
│                                                             │
│  ┌──────────────┐  [Size: Small ▼]                         │
│  │ Current      │  [Milk: Whole ▼]                         │
│  │ Order:       │  [Syrup: None ▼]                         │
│  │ ──────────── │                                          │
│  │ Latte        │  [+ Add to Order ]                       │
│  │ + Oat Milk   │                                          │
│  │ $5.50        │  ───────────────────                     │
│  │              │  Subtotal: $12.00                        │
│  │ Croissant    │  Tax: $0.96                              │
│  │ $3.50        │  ───────────────────                     │
│  │              │  TOTAL: $12.96                           │
│  │ [Remove] [▼] │                                          │
│  └──────────────┘  [    COMPLETE ORDER    ]                │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│  KITCHEN DISPLAY                                            │
├─────────────────────────────────────────────────────────────┤
│  ORDER #1042           ORDER #1043           ORDER #1044   │
│  2m ago                1m ago                0m ago        │
│  ┌──────────┐         ┌──────────┐         ┌──────────┐   │
│  │ Latte    │         │ Cappucc  │         │ Americano│   │
│  │ - Oat    │         │ - Large  │         │ - Iced   │   │
│  │ - Vanilla│         │ - Extra  │         │          │   │
│  │ Croissant│         │   Shot   │         │ Muffin   │   │
│  │          │         │ Bagel    │         │          │   │
│  │[COMPLETE]│         │[COMPLETE]│         │[COMPLETE]│   │
│  └──────────┘         └──────────┘         └──────────┘   │
└─────────────────────────────────────────────────────────────┘

[CHECKPOINT 2: UI wireframes complete]
```

### 🎬 Scene 5: Security & Validation

```
─────────────────────────────────────────────────────────────
PHASE 4: VALIDATION REVIEW
─────────────────────────────────────────────────────────────

[STATUS: VALIDATION ACTIVE | Security critical]

AI: For a POS system, security is paramount. Let's validate 
our approach.

SECURITY VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ Authentication
  □ 4-digit PIN for speed (not passwords)
  □ Auto-lock after 5 minutes idle
  □ PIN change requires manager approval

□ Authorization (Role-Based Access)
  Barista can:
    ✓ Create orders
    ✓ View menu/prices
    ✓ Mark orders complete
    ✓ View inventory levels
  
  Manager can:
    ✓ Everything barista can
    ✓ Void orders (with reason)
    ✓ Modify prices/menu
    ✓ View reports
    ✓ Manage users

□ Audit Trail
  □ Every order creation logged
  □ Every void logged with reason
  □ Every price change logged
  □ End-of-day reconciliation required

□ Data Protection
  □ Database backups (daily automated)
  □ No customer PII stored (just orders)
  □ Secure PIN storage (hashed)

PERFORMANCE VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Target: 80 orders/hour = 1 order every 45 seconds
UI Response: <100ms for button taps
Order Creation: <3 taps for common orders
Search: Find any item in <2 seconds

OFFLINE VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ App loads without internet
□ Orders queue locally
□ Inventory updates locally
□ When connection restored:
  □ Sync pending orders
  □ Resolve conflicts (timestamp-based)
  □ Backup to cloud (if configured)

[VERIFY: All validations passed | ALIGN: Security approved]
```

### 🎬 Scene 6: Delivery

```
─────────────────────────────────────────────────────────────
PHASE 5 & 6: QA & DELIVERY
─────────────────────────────────────────────────────────────

[STATUS: DELIVERY | Multi-phase package]

AI: ☕ Your Bean There POS System specification is complete!

DELIVERABLES:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 bean-there-pos/
├── 📄 PROJECT_OVERVIEW.md
│   └── Vision, scope, phased approach
├── 📄 REQUIREMENTS.md
│   └── Detailed functional requirements
├── 📄 ARCHITECTURE.md
│   └── System design, tech stack, network
├── 📄 DATABASE_SCHEMA.sql
│   └── Complete SQLite schema
├── 📄 UI_WIREFRAMES/
│   ├── barista_order_screen.png
│   ├── kitchen_display.png
│   └── manager_dashboard.png
├── 📄 API_SPEC.md
│   └── Internal API documentation
├── 📄 SECURITY_POLICY.md
│   └── Authentication, authorization, audit
├── 📄 DEPLOYMENT_GUIDE.md
│   └── Installation on Raspberry Pi
└── 📁 PHASES/
    ├── phase1_order_management/
    ├── phase2_inventory/
    └── phase3_reporting/

IMPLEMENTATION TIMELINE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Phase 1 - Order Management (Week 1-2)
• Menu setup UI
• Order creation flow
• Kitchen display
• Basic checkout

Phase 2 - Inventory (Week 3-4)
• Ingredient tracking
• Recipe linking
• Low-stock alerts
• Waste tracking

Phase 3 - Reporting & Polish (Week 5-6)
• Manager dashboard
• Sales reports
• User management
• Backup system

ESTIMATED COSTS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
• Hardware (Raspberry Pi 4 + case): $75
• Tablets (2x used iPad): $400
• Development time: 6 weeks
• vs. Square Register: $799 + $60/month
• Break-even: 4 months

Maria: This is so thorough! I feel confident we can actually 
build this. The phased approach means I'm not waiting 6 weeks 
to see value.

AI: Exactly! And after Phase 1, you'll already see morning 
rush improvement. The inventory tracking in Phase 2 will 
save you from those "sorry, we're out" moments. By Phase 3, 
you'll have insights about your business you never had before.

Remember: Start simple, test with real orders, iterate. The 
best POS is one your staff actually enjoys using.

Good luck, Maria! Your café is going to run like a dream. ☕

═════════════════════════════════════════════════════════════
PROJECT METRICS
═════════════════════════════════════════════════════════════
Mode Used:        CONSULT (Complex requirements)
Session Duration: 1 hour 15 minutes
Time Estimated:   6 weeks implementation
Budget vs Square: 76% savings over 2 years
Risk Level:       Medium (mitigated by phased approach)
Staff Training:   Estimated 2 hours per person
═════════════════════════════════════════════════════════════
```

### 📝 Lessons Learned - Coffee Shop POS

| Aspect | Insight |
|--------|---------|
| **Requirements Depth** | Offline-first was critical requirement |
| **Architecture Choice** | Local-first beat cloud for this use case |
| **Phased Approach** | Reduced risk and delivered early value |
| **Security Focus** | Audit trail more important than encryption |
| **Cost Analysis** | Custom build vs SaaS needs 2-year view |

---

## PROJECT 5: "The 3D Printed Prosthetic" 🦾

**Domain**: Manufacturing/Medical  
**Complexity**: Very High  
**Client**: Helping Hands Initiative (volunteer group)  
**Goal**: Produce 100 low-cost prosthetic hands for children

### 🎬 Scene 1: Discovery

```
┌─────────────────────────────────────────────────────────────┐
│  KIMI CLI - Consultancy Mode                               │
│  Version: consultancy-skill v6.1                            │
└─────────────────────────────────────────────────────────────┘

user@helping-hands:~$ kimi consult manufacturing

🎭 CONSULTANCY SKILL ACTIVATED
Domain: manufacturing (medical devices sub-domain)
⚠️  MEDICAL DEVICE CONTEXT DETECTED
Safety and regulatory considerations apply.

─────────────────────────────────────────────────────────────
PHASE 1: DISCOVERY
─────────────────────────────────────────────────────────────

Dr. Patel (Medical Advisor): I'm volunteering with Helping 
Hands Initiative. We're a group of makers, doctors, and 
engineers who want to produce prosthetic hands for children 
in underserved communities. We've 3D printed a few successfully, 
but now we have funding for 100 units and we need to scale.

AI: This is meaningful work. Scaling medical devices brings 
unique challenges - consistency, quality control, and 
regulatory awareness. Let's understand your current state.

What design are you currently using? And what's your 
production capacity right now?

Dr. Patel: We're using the Phoenix Hand v2 from Enabling 
the Future. It's open source, body-powered. Right now we 
make about 2 per month on hobby printers. We have 5 Prusa 
i3 MK3S printers and a small workshop.

AI: Phoenix Hand is a solid choice - well-tested, good 
community support. At 2 per month, scaling to 100 means 
you need 50 months of current capacity. What's driving 
the timeline?

Dr. Patel: We have a shipment opportunity to a partner 
clinic in Guatemala in 6 months. And honestly, we're 
worried about quality consistency. Each hand is slightly 
different, and we need them to be reliable.

[STATUS: DISCOVERY ACTIVE | Manufacturing complexity detected]

AI: Quality consistency is critical for medical devices. 
What testing do you currently do on each hand?

Dr. Patel: We do a basic function test - can it grip, 
does the tension feel right. But we don't have formal 
QA protocols. That's part of what we need help with.

AI: And the recipients - are they measured locally or 
do you get measurements remotely?

Dr. Patel: Mix of both. Some we measure via video call 
with local therapists, some the clinic sends measurements. 
That's been... challenging. We've had fit issues.

[STATUS: DISCOVERY COMPLETE | High complexity, high stakes]
```

### 📋 REQUIREMENTS.md Generated

```markdown
# Helping Hands Initiative - Production Requirements

## Mission Context
- **Organization**: Helping Hands Initiative (volunteer)
- **Product**: Body-powered prosthetic hands for children
- **Design**: Phoenix Hand v2 (Enabling the Future, open source)
- **Target Production**: 100 units in 6 months

## Regulatory & Ethics
- **FDA Status**: Exempt (custom device, practitioner supervised)
- **Target Countries**: Guatemala initially, expanding
- **Medical Oversight**: Dr. Patel (volunteer physician)
- **Recipient Age**: 4-16 years (growing children)

## Production Requirements
- **Current Capacity**: 2 units/month (5× Prusa i3 MK3S)
- **Target Capacity**: 17 units/month
- **Quality Standard**: Medical-grade consistency
- **Cost Target**: <$50 per hand (materials only)

## Critical Quality Criteria
- [ ] Mechanical function: 10,000+ cycles without failure
- [ ] Grip strength: Appropriate for age group
- [ ] Weight: <300g total
- [ ] No sharp edges or pinch points
- [ ] Hygienic (washable, non-porous where possible)
- [ ] Growth accommodation (adjustable for 1-2 years use)

## Supply Chain
- **Filament**: PETG (medical safe, durable)
- **Hardware**: Screws, elastic, padding (bulk sourcing needed)
- **Assembly**: Volunteer team, standardized process
```

### 🎬 Scene 2: Design Review

```
─────────────────────────────────────────────────────────────
PHASE 2: DESIGN REVIEW
─────────────────────────────────────────────────────────────

[STATUS: DESIGN ACTIVE | Manufacturing analysis]

AI: Scaling from 2/month to 17/month requires fundamental 
changes to your workflow. Let me present approaches:

┌────────────────────────────────────────────────────────────┐
│ OPTION A: Add More Printers (Horizontal Scaling)          │
├────────────────────────────────────────────────────────────┤
│ • Purchase 20 additional Prusa printers                   │
│ • Same workflow, more capacity                            │
│ • Cost: ~$16,000 + space requirements                     │
│ • Pros: Familiar, proven                                  │
├────────────────────────────────────────────────────────────┤
│ ✅ Simplest mentally, volunteers already trained           │
│ ⚠️ High capital cost, space issues, maintenance burden     │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION B: Industrial Printer + Batch Production           │
├────────────────────────────────────────────────────────────┤
│ • Purchase 1-2 large-format industrial printers           │
│ • Print multiple hands per bed (nest parts)               │
│ • Cost: ~$8,000 + filament                                │
│ • Capacity: 10+ hands per print                           │
├────────────────────────────────────────────────────────────┤
│ ✅ Lower cost, faster production, better consistency       │
│ ⚠️ New learning curve, single point of failure             │
└────────────────────────────────────────────────────────────┘

┌────────────────────────────────────────────────────────────┐
│ OPTION C: Hybrid with Farm Management (RECOMMENDED)       │
├────────────────────────────────────────────────────────────┤
│ • Optimize existing 5 printers with farm software         │n│ • Add 5-10 more mid-range printers                        │
│ • Implement print queue, auto-slicing, monitoring         │
│ • Dedicated assembly line workflow                        │
│ • Cost: ~$6,000 + software                                │
├────────────────────────────────────────────────────────────┤
│ ✅ Balanced cost, scalable, maintains redundancy           │
│ ⚠️ Requires workflow redesign, training investment         │
└────────────────────────────────────────────────────────────┘

Dr. Patel: Option C sounds right. We can't afford the space 
for 25 printers, and one industrial printer breaking would 
stop everything. But what about quality control? That's our 
biggest concern.

AI: Quality is where manufacturing becomes medical. Here's 
the quality system I'd recommend:

QUALITY CONTROL SYSTEM:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TIER 1: Print Validation (per part)
□ Dimensional accuracy check (calipers)
□ Layer adhesion test (visual + flex)
□ Nozzle clog detection (surface quality)
□ Reject criteria documented

TIER 2: Assembly Validation (per hand)
□ Function test (grip, release, tension)
□ Torque test (screw tightness)
□ Smooth operation (no binding)
□ Weight check (must be <300g)

TIER 3: Final Inspection (per hand)
□ Visual inspection (no defects, sharp edges)
□ 100-cycle function test
□ Documentation completed
□ Serial number assigned
□ Photo for records

[ACTIVE: Validator checking medical safety...]

Dr. Patel: The 100-cycle test is smart. We've had hands that 
worked fine initially but failed after a week of use.

AI: Exactly. And I recommend tracking every hand with a 
serial number. If one fails in the field, we need to know 
which batch, which printer, which volunteer assembled it.
That's how we improve.

[VERIFY: Design approved | ALIGN: Quality system validated]
```

### 🎬 Scene 3: Build Phase - CAD & Print Optimization

```
─────────────────────────────────────────────────────────────
PHASE 3: BUILD
─────────────────────────────────────────────────────────────

[STATUS: BUILD ACTIVE | Production optimization]

AI: Now let's optimize the Phoenix Hand for production. 
Open source is a starting point - we need manufacturing 
optimization.

CAD OPTIMIZATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Changes for Batch Production:

1. SUPPORT OPTIMIZATION
   • Redesign overhangs to reduce support material
   • Target: 30% reduction in print time
   • Example: Angled thumb post instead of vertical

2. ORIENTATION STANDARDIZATION
   • All parts have documented optimal orientation
   • Reduces variation between prints
   • Maximize strength in stress directions

3. NESTING FOR BED EFFICIENCY
   • Full-hand kit fits on single Prusa bed (250×210mm)
   • Layout: 2 hands per bed for medium printers
   • Industrial: 6 hands per bed (300×300mm)

4. SIZE FAMILIES
   • Create 5 standard sizes (not custom each time)
   • Size 1: Ages 4-6
   • Size 2: Ages 6-8
   • Size 3: Ages 8-10 (most common)
   • Size 4: Ages 10-13
   • Size 5: Ages 13-16
   • Growth accommodation built into each

[CHECKPOINT 1: CAD optimization complete]

PRINT OPTIMIZATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Slicer Profile "Phoenix-Medical":
• Layer height: 0.2mm (balance speed/quality)
• Perimeters: 3 (strength)
• Infill: 25% gyroid (strongest for mechanical parts)
• Speed: 40mm/s (quality over speed)
• Temperature: 245°C (PETG layer adhesion)
• Bed: 80°C
• Support: Tree supports, 45° threshold
• Cooling: 30% fan (after layer 3)

Estimated Print Time (per hand, full kit):
• Original profile: 18 hours
• Optimized profile: 12 hours (33% reduction)

[CHECKPOINT 2: Print optimization complete]
```

### 🎬 Scene 4: Build Phase - Assembly Line Design

```
ASSEMBLY LINE WORKFLOW:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

STATION 1: Parts Preparation (Volunteer A)
□ Remove supports from printed parts
□ Light sanding of support marks
□ Sort parts into bins by hand
□ Quality check: Reject obviously failed prints

STATION 2: Hardware Prep (Volunteer B)
□ Cut elastic to standard lengths
□ Pre-assemble tension mechanisms
□ Sort screws into compartment trays
□ Prepare padding materials

STATION 3: Main Assembly (Volunteer C - Experienced)
□ Assemble finger mechanism
□ Install tension system
□ Attach gauntlet (forearm piece)
□ Initial function test

STATION 4: Finishing (Volunteer D)
□ Final sanding and smoothing
□ Install padding
□ Apply finish if desired (skin-tone options)
□ Final weight check

STATION 5: Quality Control (Dr. Patel or trained QC)
□ 100-cycle function test
□ Documentation completion
□ Serial number assignment
□ Photography
□ Packaging

PRODUCTION CALCULATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Print Capacity:
• 5 printers × 2 hands/day = 10 hands/day printing
• Print time is the bottleneck (12 hours per hand set)
• Actually: 5 printers × 1.5 hands/day = 7.5 hands/day

Assembly Capacity:
• 5 stations, 2 hours per hand (with training)
• 4 volunteers × 4 hours = 16 hours/day
• 16 hours / 2 hours = 8 hands/day

Monthly Output: 7.5 hands/day × 20 days = 150 hands/month
Target: 100 hands in 6 months = 17 hands/month

✓ CAPACITY EXCEEDS TARGET by 8x (room for learning curve)

[CHECKPOINT 3: Assembly line designed]
```

### 🎬 Scene 5: Validation & Safety

```
─────────────────────────────────────────────────────────────
PHASE 4: VALIDATION REVIEW
─────────────────────────────────────────────────────────────

[STATUS: VALIDATION ACTIVE | Medical device critical]

AI: For medical devices, validation is life-safety critical. 
Here's our comprehensive validation protocol:

MECHANICAL VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ Cycle Testing
  • Test rig: Automated open/close cycling
  • Target: 10,000 cycles without degradation
  • Frequency: Sample 1 from each batch of 10

□ Load Testing
  • Maximum grip force measurement
  • Target: 5N grip force for child-sized hands
  • Test: 3× safety factor (15N) without failure

□ Environmental Testing
  • Heat: 50°C for 24 hours (shipping conditions)
  • Cold: 0°C for 24 hours
  • Humidity: 90% for 24 hours
  • Function verified after each

BIOCOMPATIBILITY VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ Material Safety
  • PETG: FDA approved for food contact (not implant)
  • Acceptable for external prosthetic
  • No toxic additives in filament

□ Surface Finish
  • No sharp edges (visual + tactile inspection)
  • Smooth surfaces (bacterial harboring prevention)
  • Washable design (hygiene maintenance)

FITTING PROTOCOL:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

□ Pre-Shipment
  • Therapist consultation (video call)
  • Measurement verification
  • Size selection confirmation
  • Expected fit documented

□ Post-Receipt
  • 2-week check-in (video call)
  • Function assessment
  • Comfort evaluation
  • Adjustment instructions if needed

□ Follow-up
  • Monthly check-ins for 3 months
  • Failure reporting mechanism
  • Replacement protocol if needed

[VERIFY: All validations defined | ALIGN: Medical safety confirmed]
```

### 🎬 Scene 6: Delivery

```
─────────────────────────────────────────────────────────────
PHASE 5 & 6: QA & DELIVERY
─────────────────────────────────────────────────────────────

[STATUS: DELIVERY | Mission-critical package]

AI: 🦾 Your Helping Hands Production System is complete!

DELIVERABLES:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 helping-hands-production/
├── 📄 PROJECT_OVERVIEW.md
│   └── Mission, scope, timeline
├── 📄 REQUIREMENTS.md
│   └── Technical and quality requirements
├── 📄 QUALITY_MANUAL.md
│   └── Complete QC system, tiered inspections
├── 📁 cad/
│   ├── phoenix-hand-optimized/
│   ├── size-1-through-5/
│   └── bed-layout-templates/
├── 📁 print-profiles/
│   ├── PrusaSlicer-Phoenix-Medical.ini
│   └── Cura-Phoenix-Medical.profile
├── 📄 SLICING_GUIDE.md
│   └── Orientation, supports, batch setup
├── 📄 ASSEMBLY_MANUAL.md
│   └── Step-by-step with photos
├── 📄 TRAINING_MATERIALS/
│   ├── volunteer-training-slides.pdf
│   ├── qc-checklist-wallet-card.pdf
│   └── assembly-video-links.md
├── 📄 BATCH_TRACKING.xlsx
│   └── Serial numbers, printer logs, QC records
├── 📄 SHIPPING_PROTOCOL.md
│   └── Packaging, customs, clinic coordination
└── 📄 FIELD_FEEDBACK_FORM.md
    └── Recipient follow-up documentation

PRODUCTION TIMELINE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Month 1: Setup & Training
□ Optimize CAD files
□ Train volunteers on assembly line
□ Establish QC protocols
□ Source bulk materials

Month 2-5: Production
□ Target: 25 hands/month
□ Weekly QC reviews
□ Continuous improvement

Month 6: Shipment & Documentation
□ Final QC on all units
□ Pack for international shipping
□ Complete recipient documentation
□ Handoff to clinic

BUDGET SUMMARY:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Per Hand Costs:
• PETG filament: $8
• Hardware (screws, elastic): $12
• Padding, straps: $5
• Packaging: $2
• QC/testing amortized: $3
• TOTAL: $30 per hand

100 Hands: $3,000 (vs. $50 target - 40% under budget!)
Remaining budget: $2,000 for shipping, contingencies

Dr. Patel: This is extraordinary. You've given us not just 
a plan, but a complete production system. The children in 
Guatemala are going to have hands that actually work, 
consistently, reliably.

AI: This is why I do this work. You're not just making 
hands - you're restoring dignity, independence, and hope. 
The 100 children who receive these will have tools to 
participate more fully in life.

A few final thoughts:
• Document everything - your next 100 will be easier
• Build relationships with the clinics - they're partners
• Share your improvements back to the Enabling the Future 
  community
• Take photos (with permission) - it fuels the volunteers

You're doing important work. Go change lives. 🦾❤️

═════════════════════════════════════════════════════════════
PROJECT METRICS
═════════════════════════════════════════════════════════════
Mode Used:        CONSULT (Medical device rigor)
Session Duration: 1 hour 45 minutes
Time Estimated:   6 months to 100 hands
Production Rate:  150/month capacity (8x target)
Cost per Hand:    $30 (40% under budget)
Lives Impacted:   100 children (initial shipment)
═════════════════════════════════════════════════════════════
```

### 📝 Lessons Learned - 3D Printed Prosthetic

| Aspect | Insight |
|--------|---------|
| **Medical Context** | Validation requirements far exceed typical manufacturing |
| **Open Source** | Starting point, not final design - optimize for production |
| **Standardization** | 5 sizes better than 100 custom fits |
| **Quality System** | Tiered QC catches errors before they reach children |
| **Mission Impact** | Documentation enables future scaling |

---

## Cross-Project Analysis

### Mode Selection Patterns

| Project | Mode | Why It Fit |
|---------|------|------------|
| Wedding Dress | CONSULT | Emotional, budget-constrained, many options |
| Photo Renamer | FAST-TRACK | Clear scope, technical user, simple output |
| Rocket Fins | CONSULT | Safety-critical, engineering rigor needed |
| Coffee Shop POS | CONSULT | Complex requirements, multi-phase, high stakes |
| Prosthetic Hands | CONSULT | Medical device, mission-critical, regulatory |

### Common Success Factors

1. **Decision Gates Prevented Disasters**: Every project had explicit go/no-go points
2. **Documentation Outlived Sessions**: Deliverables enabled ongoing execution
3. **Safety-First Mindset**: Risk assessment was never skipped
4. **Client Education**: Understanding "why" improved adoption
5. **Iterative Validation**: Small tests before big commitments

### Time Estimate Accuracy

| Project | Estimated | Actual | Variance |
|---------|-----------|--------|----------|
| Wedding Dress | 10 weeks | TBD | - |
| Photo Renamer | 15 min | 18 min | +20% |
| Rocket Fins | 2 weeks | TBD | - |
| Coffee Shop POS | 6 weeks | TBD | - |
| Prosthetic Hands | 6 months | TBD | - |

*Note: TBD projects were ongoing at documentation time*

---

## Conclusion

These five projects demonstrate the Consultancy Skill's 
adaptability across domains, complexities, and constraints. 
From Sarah's wedding dress to children's prosthetic hands, 
the same core principles apply:

1. **Listen First**: Discovery reveals what clients actually need
2. **Design Options**: Choices empower, singular solutions constrain
3. **Validate Everything**: Evidence beats assumptions
4. **Document Thoroughly**: Deliverables enable independent execution
5. **Celebrate Success**: Recognition reinforces value

The terminal format, decision gates, and phased approaches 
shown here are templates - adapt them to your specific context, 
but never skip the fundamentals that make consultancy valuable.

---

*Document Version: 1.0*  
*Word Count: ~7,500*  
*Last Updated: 2026-03-12*
