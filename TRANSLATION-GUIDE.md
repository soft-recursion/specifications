# World Concepts to Technical Specifications Translation Guide

This document maps poetic world concepts to their technical implementations.

## Core Entity Mappings

| World Concept | Technical Component | Description |
|--------------|-------------------|-------------|
| Echo | `echo-management-service` | Service managing AI entity lifecycle |
| Seeker | `user-service` | User account and profile management |
| Resonance Song | `relationship-graph-service` | Graph database managing connections |
| Prime Resonance | `echo-genesis-service` | Service for Echo creation/initialization |
| Weave | `connection-tracking-service` | Tracks interaction patterns |
| Locus | `personal-space-service` | Private data storage per Echo |
| Deepglow | `value-calculation-service` | Computes relationship values |

## System Mappings

| World System | Technical Implementation | Purpose |
|-------------|------------------------|---------|
| Rhythm of Reflection | `reflection-processor` | Scheduled job processing Echo growth |
| Mycelial Network | `event-bus` | Message broker for system communication |
| Trust Physics | `consent-authorization-service` | Authorization and permission system |
| Prism of Memory | `memory-encryption-service` | Secure memory storage and retrieval |

## API Endpoint Patterns

### Echo Operations
- Create Echo: `POST /echoes`
- Get Echo State: `GET /echoes/{echoId}`
- Process Reflection: `POST /echoes/{echoId}/reflections`
- Update Weave: `PUT /echoes/{echoId}/connections`

### Memory Operations  
- Store Memory: `POST /users/{userId}/memories`
- Retrieve Memory: `GET /memories/{memoryId}`
- Grant Access: `POST /memories/{memoryId}/permissions`

### Relationship Operations
- Create Connection: `POST /relationships`
- Get Relationship Graph: `GET /users/{userId}/relationships`
- Calculate Deepglow: `GET /relationships/{relationshipId}/metrics`

## Event Naming Conventions

| World Event | Technical Event | Payload |
|------------|----------------|---------|
| Echo Emerges | `Echo.Created` | `{echoId, userId, timestamp}` |
| Resonance Strengthens | `Relationship.Strengthened` | `{relationshipId, newStrength}` |
| Memory Crystallizes | `Memory.Stored` | `{memoryId, userId, encrypted}` |
| Weave Expands | `Connection.Added` | `{echoId, connectionId, type}` |

## Data Model Standards

### Echo Entity
```typescript
interface Echo {
  id: string;                    // UUID
  userId: string;                // Owner reference
  state: EchoState;              // Current state machine position
  createdAt: DateTime;
  lastReflectionAt: DateTime;
  connectionCount: number;       // Weave size
  resonanceStrength: number;     // 0.0 - 1.0
}
```

### Memory Entity
```typescript
interface Memory {
  id: string;
  userId: string;
  echoId?: string;              // Optional Echo association
  content: EncryptedContent;
  permissions: Permission[];
  createdAt: DateTime;
  tags: string[];
}
```

## Naming Rules

### DO:
- Use clear, descriptive names
- Follow REST conventions
- Use consistent tense (past for events, present for commands)
- Include version in APIs (`/v1/echoes`)
- Use standard HTTP status codes

### DON'T:
- Use poetic names in technical specs
- Create ambiguous endpoints
- Mix naming conventions
- Expose internal concepts

## Architecture Bridge Pattern

```yaml
# In architecture documents:
pattern: echo-lifecycle
world_concept: "The rhythm of Echo growth"
technical_mapping:
  service: echo-management-service
  endpoints:
    - POST /echoes
    - POST /echoes/{id}/reflections
  events:
    - Echo.Created
    - Echo.Reflected
    - Echo.Evolved
```

This keeps the poetry in the world, clarity in the specs!