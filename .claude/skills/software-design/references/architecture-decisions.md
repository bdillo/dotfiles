# Architecture Decision Guide

Quick reference for common technical decisions. Use this to ensure important tradeoffs are considered, not to prescribe answers.

## Language Selection

| Factor | Consider |
|--------|----------|
| Team familiarity | What does the team/user know? |
| Ecosystem | Are needed libraries available? |
| Performance needs | Is this CPU-bound, I/O-bound, memory-constrained? |
| Deployment target | Browser (JS/WASM), server, CLI, embedded? |
| Type safety needs | How critical is catching errors at compile time? |

## Sync vs Async

**Default to sync** unless:
- I/O-bound with many concurrent operations
- Building a server handling many simultaneous requests
- Need to integrate with async ecosystem (e.g., asyncio, tokio)

**Async adds complexity:** harder to debug, viral through codebase, more cognitive overhead.

## Error Handling Patterns

| Pattern | Good For | Language Examples |
|---------|----------|-------------------|
| Exceptions | Rapid prototyping, expected to rarely fail | Python, JS, Java |
| Result types | Explicit error handling, type-safe | Rust, Go, modern TS |
| Error codes | C interop, performance-critical | C, low-level systems |

**Principle:** Make errors visible and hard to ignore at API boundaries.

## Dependency Decisions

Before adding a dependency, ask:
1. **Is it maintained?** Check last commit, open issues, bus factor
2. **Is it stable?** Pre-1.0 libraries may break
3. **Is it necessary?** Could you write the 20 lines yourself?
4. **License compatible?** GPL viral, MIT/Apache permissive
5. **Transitive deps?** `npm ls` or `pip show` to check what you're really importing

**Rule of thumb:** Fewer dependencies = easier maintenance. Each dep is a liability.

## API Design Principles

### Naming
- Verb-noun for actions: `create_user`, `parse_config`
- Noun for data/objects: `User`, `Config`
- Be consistent: don't mix `get_` and `fetch_`

### Parameters
- Required params first, optional later
- Use keyword arguments for anything non-obvious
- Prefer fewer params; use config objects for many options

### Return Values
- Return the useful thing, not status + thing
- Be consistent about what operations return
- Null/None should mean "absence," not "error"

### Breaking Changes
- Additions are usually safe
- Removals and renames break things
- Semantic versioning: MAJOR.MINOR.PATCH

## Common Patterns

### Configuration Hierarchy (most flexible)
1. Hardcoded defaults (lowest priority)
2. Config file
3. Environment variables
4. CLI flags (highest priority)

### Plugin Architecture (when to use)
- Users need to extend behavior
- Core must stay stable while features evolve
- Different users need different capabilities

### Repository Pattern (when to use)
- Multiple data sources possible
- Testing requires swapping storage
- Business logic shouldn't know about database details

## Red Flags to Watch For

- **"We might need X later"** — Don't build for hypotheticals. YAGNI.
- **"Let's make it configurable"** — Every config option is a decision pushed to users.
- **Premature abstraction** — Duplication is cheaper than wrong abstraction.
- **Missing error paths** — Every external call can fail. Plan for it.
- **No clear owner** — Shared code often becomes nobody's code.
