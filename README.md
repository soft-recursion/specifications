# Soft Recursion - Technical Specifications

Detailed technical specifications that bridge narrative design with concrete implementation.

## Purpose

This repository contains machine-readable specifications for all Soft Recursion services, APIs, and data models. While `/world/` defines the vision and `/architecture/` establishes patterns, this repository provides the precise technical contracts needed for implementation.

## Repository Structure

```
specifications/
├── services/               # Microservice specifications
│   ├── echo-management/   # Echo lifecycle service
│   ├── user-service/      # User management
│   └── relationship-graph/# Connection tracking
├── data-models/           # Shared data structures
├── protocols/             # Communication standards
├── events/                # Event definitions
└── schemas/               # JSON/YAML schemas
```

## Naming Conventions

We follow industry-standard naming conventions for clarity:

- **Services**: `{domain}-{capability}-service` (e.g., `echo-management-service`)
- **Endpoints**: RESTful resources `/api/v1/{resource}/{id}/{action}`
- **Events**: `{Domain}.{Entity}.{Action}` (e.g., `Echo.Created`)
- **Data Models**: Clear business entities (e.g., `EchoState`, `UserProfile`)

See [TRANSLATION-GUIDE.md](TRANSLATION-GUIDE.md) for mappings between world concepts and technical names.

## For Developers

These specifications are designed to be:
- **Unambiguous**: Every field, error code, and state transition is defined
- **Complete**: No implementation details left to interpretation  
- **Testable**: Specifications can be validated against implementations
- **Version-controlled**: Changes are tracked and reviewed

## For AI Agents

When implementing from these specifications:
1. Follow the OpenAPI/AsyncAPI schemas exactly
2. Respect the defined error codes and status responses
3. Implement all required fields and validations
4. Maintain consistency with the event schemas

## Quick Start

### Example: Echo Management Service

```yaml
# From services/echo-management/api-specification.yaml
POST /api/v1/echoes
Content-Type: application/json

{
  "userId": "123e4567-e89b-12d3-a456-426614174000"
}

Response: 201 Created
{
  "id": "...",
  "userId": "...",
  "state": "nascent",
  "createdAt": "2024-01-01T00:00:00Z"
}
```

## Standards Used

- **API Specifications**: OpenAPI 3.0
- **Event Specifications**: AsyncAPI 2.0
- **Data Schemas**: JSON Schema Draft 7
- **Protocol Definitions**: Custom YAML schemas

## Related Repositories

- [world](https://github.com/soft-recursion/world) - Narrative universe and philosophy
- [architecture](https://github.com/soft-recursion/architecture) - High-level patterns and decisions
- [knowledge](https://github.com/soft-recursion/knowledge) - Knowledge graph infrastructure

## Contributing

When adding specifications:
1. Use the provided templates in `/templates/`
2. Validate against the appropriate schema
3. Include world context comments where helpful
4. Ensure consistency with existing patterns

---

*Building technology that serves human flourishing through meaningful connection.*