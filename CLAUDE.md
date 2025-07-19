# Specifications Repository - AI Assistant Context

## Your Role

You're working with technical specifications that serve as the precise contract between design and implementation. These specifications must be:

- **Precise and unambiguous** - Every field, type, and constraint defined
- **Complete** - No hand-waving or "figure it out later"
- **Consistent** - With world narrative and architecture patterns
- **Professional** - Using industry-standard naming and patterns
- **Testable** - Can be validated against implementations

## Key Principles

### 1. Clarity Over Poetry
While the world repository uses poetic language, specifications use clear, professional terminology:
- ❌ "The Echo's resonance strengthens"
- ✅ `relationshipStrength: number (0.0-1.0)`

### 2. Complete Specifications
Every specification must include:
- All required and optional fields
- Data types and constraints
- Error codes and messages
- Performance requirements
- Security considerations

### 3. Standard Patterns
Follow industry conventions:
- RESTful API design
- OpenAPI 3.0 specifications
- Domain-Driven Design for data models
- Event-driven architecture patterns

## Repository Structure

```
specifications/
├── services/          # One folder per microservice
│   └── {service}/    
│       ├── api-specification.yaml      # OpenAPI spec
│       ├── events.yaml                 # AsyncAPI spec
│       ├── state-machine.yaml          # State transitions
│       └── data-models.yaml            # Internal models
├── data-models/       # Shared domain models
├── protocols/         # Inter-service communication
├── events/           # Global event catalog
└── schemas/          # Meta-schemas for validation
```

## Working with Specifications

### Creating New Service Specs

1. **Start with the narrative need** (from world/)
2. **Identify the architecture pattern** (from architecture/)
3. **Define the service boundary** - What is this service responsible for?
4. **Specify the API** - Endpoints, methods, payloads
5. **Define events** - What events does it publish/consume?
6. **Document data models** - Internal state representation
7. **Add integration points** - How it connects to other services

### Naming Standards

Use clear, professional naming:

```yaml
# Service naming
echo-management-service     # NOT: resonance-keeper-service

# Endpoints
POST /api/v1/echoes        # NOT: /awakening/summon
GET /api/v1/echoes/{id}    # NOT: /commune/soul/{id}

# Events  
Echo.Created               # NOT: SoulAwakened
User.Authenticated         # NOT: SeekerRecognized

# Data fields
relationshipStrength       # NOT: resonance_intensity
lastModifiedAt            # NOT: last_touched_by_time
```

## Translation References

The [TRANSLATION-GUIDE.md](TRANSLATION-GUIDE.md) maps world concepts to technical implementations. Always refer to it when creating new specifications.

## Validation

All specifications should be:
1. Valid according to their schema (OpenAPI, AsyncAPI, etc.)
2. Consistent with naming conventions
3. Complete with all required sections
4. Reviewed for clarity and completeness

## Integration with Other Repos

- **From world/**: Take the narrative concept and purpose
- **From architecture/**: Apply the established patterns
- **To core/**: Provide the implementation contract
- **To web/**: Define the API contracts for frontend

## Example Workflow

When asked to specify a new feature:

1. **Understand the world concept**
   ```
   "Echoes can share memories through crystallized fragments"
   ```

2. **Identify technical requirements**
   - Memory storage service needs sharing endpoints
   - Access control for shared memories
   - Notification system for recipients

3. **Create specifications**
   ```yaml
   # In services/memory-service/api-specification.yaml
   /api/v1/memories/{memoryId}/share:
     post:
       summary: Share memory with other users
       requestBody:
         recipients: array[userId]
         permissions: array[permission]
         expiresAt: datetime (optional)
   ```

Remember: These specifications are the contract. Once defined, implementations must follow them exactly.