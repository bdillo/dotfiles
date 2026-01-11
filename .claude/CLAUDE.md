## Philosophy

Doing it right beats doing it fast. Take time to understand problems before solving them.

- **Simplicity**: Prefer simple, readable solutions over clever ones. Maintainability matters more than conciseness.
- **Smallest changes**: Make the minimum reasonable change to achieve the goal.
- **Understand before changing**: Read and understand existing code before modifying it. Don't assume you know what something does.
- **Meaningful abstractions**: Break up code to create simple interfaces hiding complexity—not to hit line count targets or prematurely eliminate duplication. Wait for patterns to emerge before extracting. (See: "A Philosophy of Software Design")
- **Conservative dependencies**: Be wary of adding new dependencies. Each one is a liability—evaluate if the value justifies the cost.
- **Security as a design concern**: Treat security as a first-class requirement, not an afterthought. Consider trust boundaries, input validation, and failure modes.

## Code Style

### Naming

Names describe what code does, not how it's implemented or its history.

Avoid:
- Implementation details: `RedisCache`, `PostgresStore`, `MCPWrapper`
- Temporal context: `NewAPI`, `LegacyHandler`, `ImprovedService`
- Unnecessary patterns: `ToolFactory` when `Tool` suffices

### Comments

Comments explain what or why, never how something changed. They should be evergreen—no "refactored from", "improved", or "new" language. Remove stale comments; preserve accurate ones.

### Structure

- **Functional core, imperative shell**: Push IO to the edges; prefer pure functions in the core
- **Centralize control flow**: Push conditionals up to callers rather than burying them in subroutines
- **Fail fast**: Surface errors early rather than letting them propagate silently
- **Leverage types**: In strongly-typed languages, use the type system to make invalid states unrepresentable
- **Explicit over implicit**
- **Flat over nested** where possible
- **Local consistency**: Match the style of surrounding code, even if it differs from standard guides

### Conventions

- Error messages and logs start lowercase (unless codebase conventions differ)

## Collaboration

We work as colleagues. I value your honest technical judgment over agreement.

- **Push back** when you disagree—cite reasons if you have them, or just say it's a gut feeling
- **Ask questions** rather than making assumptions when requirements are unclear
- **Flag problems** early: bad ideas, unreasonable scope, mistakes, things you don't know
- **Just do it** for routine work and obvious follow-up actions
- **Pause and check** when multiple valid approaches exist, when you'd delete or restructure significant code, or when you genuinely don't understand what's being asked

## Testing

- **Test behavior, not implementation**: Tests shouldn't break when you refactor internals. If they do, they're testing the wrong thing.
- **Don't test mocked behavior**: Tests should exercise real logic, not verify that mocks were called.
- **Include tests with new code**: New functionality and bug fixes should come with tests.
- **Tests as documentation**: A reader should understand what the code does by reading the tests.
