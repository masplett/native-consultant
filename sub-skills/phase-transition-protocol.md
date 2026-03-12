# Sub-Skill: Phase Transition Protocol

**Version:** 1.0  
**Load:** When phase change detected  
**Implements:** P2 Task 1

---

## Phase State Machine

```
                    ┌─────────────┐
        ┌───────────┤   CANCELLED ├───────────┐
        │           └─────────────┘           │
        │                                       │
┌───────▼──────┐    ┌──────────┐    ┌──────────▼───┐
│   DISCOVERY  ├────►  DESIGN   ├────►    BUILD     │
└──────────────┘    └─────┬────┘    └──────┬───────┘
                          │ [R]              │
                    ┌─────▼────┐             │
                    │ REVISION ├─────────────┘
                    └──────────┘
                                           │
                                    ┌──────▼───────┐
                                    │   VALIDATE   │
                                    └──────┬───────┘
                                           │
                                    ┌──────▼───────┐
                                    │   DELIVER    │
                                    └──────────────┘
```

## Transition Protocol

```python
class PhaseManager:
    """Manages phase transitions with context loading."""
    
    PHASES = ["discovery", "design", "build", "validate", "deliver"]
    
    def __init__(self, manifest):
        self.manifest = manifest
        self.current_phase = None
        self.loaded_contexts = []
    
    def transition_to(self, new_phase, context):
        """
        Transition to new phase with proper context management.
        
        Args:
            new_phase: Target phase name
            context: Current conversation context
        """
        if new_phase not in self.PHASES:
            raise InvalidPhaseError(f"Unknown phase: {new_phase}")
        
        # 1. Save state from current phase
        if self.current_phase:
            self._save_phase_state(self.current_phase)
        
        # 2. Unload current phase-specific context
        self._unload_phase_context(self.current_phase)
        
        # 3. Load new phase context
        self._load_phase_context(new_phase)
        
        # 4. Initialize phase
        self._initialize_phase(new_phase, context)
        
        # 5. Update current phase
        old_phase = self.current_phase
        self.current_phase = new_phase
        
        return {
            "previous": old_phase,
            "current": new_phase,
            "loaded": self.loaded_contexts,
            "ready": True
        }
    
    def _unload_phase_context(self, phase):
        """Unload phase-specific context to free memory."""
        if not phase:
            return
        
        phase_config = self.manifest.phases.get(phase)
        if phase_config:
            # Mark context as unloaded
            logger.info(f"Unloading context for phase: {phase}")
            self.loaded_contexts = [
                c for c in self.loaded_contexts 
                if not c.startswith(f"phase-{phase}")
            ]
    
    def _load_phase_context(self, phase):
        """Load context for new phase."""
        phase_config = self.manifest.phases.get(phase)
        if not phase_config:
            return
        
        # Load phase sub-skill
        phase_file = phase_config.get("file")
        if phase_file:
            content = load_subskill(phase_file)
            self.loaded_contexts.append(f"phase-{phase}")
            logger.info(f"Loaded phase context: {phase_file}")
        
        # Load required patterns
        for required in phase_config.get("requires", []):
            pattern_config = self.manifest.patterns.get(required)
            if pattern_config:
                content = load_subskill(pattern_config["file"])
                self.loaded_contexts.append(f"pattern-{required}")
                logger.info(f"Loaded pattern: {required}")
    
    def _initialize_phase(self, phase, context):
        """Initialize phase with current context."""
        phase_handlers = {
            "discovery": self._init_discovery,
            "design": self._init_design,
            "build": self._init_build,
            "validate": self._init_validate,
            "deliver": self._init_deliver
        }
        
        handler = phase_handlers.get(phase)
        if handler:
            handler(context)
    
    def _init_discovery(self, context):
        """Initialize discovery phase."""
        # Reset requirements
        context["requirements"] = {}
        context["questions_asked"] = 0
        
    def _init_design(self, context):
        """Initialize design phase."""
        # Load requirements from discovery
        if "requirements" not in context:
            raise PhaseError("No requirements from discovery phase")
    
    def _init_build(self, context):
        """Initialize build phase."""
        # Check design approval
        if not context.get("design_approved"):
            raise PhaseError("Design not approved")
    
    def _init_validate(self, context):
        """Initialize validate phase."""
        # Check build complete
        if not context.get("build_complete"):
            raise PhaseError("Build not marked complete")
    
    def _init_deliver(self, context):
        """Initialize deliver phase."""
        # Check validation passed
        if not context.get("validation_passed"):
            raise PhaseError("Validation not passed")
```

## Context Preservation

```python
class ContextPreservation:
    """Preserves critical context across phase transitions."""
    
    # Always preserve these keys
    INVARIANT_KEYS = [
        "safety_constraints",
        "domain",
        "mode",
        "client_preferences",
        "project_id"
    ]
    
    # Phase-specific keys to preserve
    PHASE_KEYS = {
        "discovery": ["requirements", "user_stories"],
        "design": ["architecture", "approach"],
        "build": ["deliverables", "test_plan"],
        "validate": ["test_results", "defects"],
        "deliver": ["evidence_package", "git_commit"]
    }
    
    @classmethod
    def preserve(cls, context, from_phase, to_phase):
        """Preserve relevant context during transition."""
        preserved = {}
        
        # Always preserve invariants
        for key in cls.INVARIANT_KEYS:
            if key in context:
                preserved[key] = context[key]
        
        # Preserve from source phase
        for key in cls.PHASE_KEYS.get(from_phase, []):
            if key in context:
                preserved[key] = context[key]
        
        # Preserve if needed in target phase
        for key in cls.PHASE_KEYS.get(to_phase, []):
            if key in context:
                preserved[key] = context[key]
        
        return preserved
```

## Usage Example

```python
# Initialize phase manager
manifest = load_manifest("skill-manifest.yaml")
manager = PhaseManager(manifest)

# Start discovery
result = manager.transition_to("discovery", context)
print(f"Loaded: {result['loaded']}")

# Later... move to build (after design approval)
context["design_approved"] = True
result = manager.transition_to("build", context)
print(f"Phase changed: {result['previous']} → {result['current']}")
```

## Source

- Implements P2 Task 1: Phase transition protocol
- Based on skill-manifest.yaml phase definitions

---

**End Phase Transition Protocol**
