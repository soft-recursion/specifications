# Service Specification Template

Use this template when creating a new service specification.

## Directory Structure

Create a new directory under `/services/` with the service name:

```
services/
└── {service-name}/
    ├── README.md              # Service overview
    ├── api-specification.yaml # OpenAPI 3.0 spec
    ├── events.yaml           # AsyncAPI 2.0 spec
    ├── state-machine.yaml    # State transitions (if applicable)
    └── data-models.yaml      # Internal data structures
```

## README.md Template

```markdown
# {Service Name} Service

## Purpose
Brief description of what this service does in technical terms.

## World Context
How this service relates to narrative concepts from the world repository.

## Responsibilities
- Bullet list of specific responsibilities
- What this service owns
- What it delegates to others

## API Overview
- Key endpoints
- Primary operations
- Integration points

## Events
- Events published
- Events consumed

## Dependencies
- Other services required
- External systems
- Shared libraries
```

## Naming Checklist

- [ ] Service name follows pattern: `{domain}-{capability}-service`
- [ ] Endpoints use RESTful conventions
- [ ] Events follow pattern: `{Domain}.{Entity}.{Action}`
- [ ] Data fields use camelCase
- [ ] No poetic names in technical specs

## Required Sections

### API Specification
- [ ] OpenAPI 3.0 format
- [ ] All endpoints documented
- [ ] Request/response schemas defined
- [ ] Error codes specified
- [ ] Authentication described

### Event Specification  
- [ ] AsyncAPI 2.0 format
- [ ] All published events
- [ ] Event payload schemas
- [ ] Subscription patterns

### State Machine (if applicable)
- [ ] All states defined
- [ ] Valid transitions
- [ ] Guards and actions
- [ ] Initial and terminal states

### Data Models
- [ ] JSON Schema format
- [ ] All fields documented
- [ ] Validation rules
- [ ] Examples provided