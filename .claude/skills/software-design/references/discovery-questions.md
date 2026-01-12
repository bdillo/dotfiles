# Discovery Questions Framework

Use these questions to fully understand a project before designing it. Ask in phases—don't overwhelm with all questions at once.

## Phase 1: Core Understanding (Always Ask)

Start here. These questions establish the foundation.

### The Problem
- What problem are you trying to solve?
- Who experiences this problem? (target user/audience)
- How do they currently solve it? (existing tools, manual process, nothing)
- What's the cost of the status quo? (time, money, frustration)

### The Vision
- What does success look like?
- What's the simplest version that would be useful? (MVP scope)
- What's explicitly out of scope?

## Phase 2: Technical Context (Ask Based on Answers)

Adapt based on Phase 1 responses.

### Environment & Constraints
- Where will this run? (local CLI, server, browser, embedded, etc.)
- Any language/framework preferences or requirements?
- Any constraints? (must integrate with X, can't use Y, needs to work offline)
- Performance requirements? (latency, throughput, data size)

### Users & Interfaces
- Who interacts with this directly? (end users, developers, other systems)
- What's the primary interface? (CLI, API, GUI, library)
- Any secondary interfaces?

### Data
- What data does this work with?
- Where does data come from? Where does it go?
- Any persistence requirements?
- Sensitivity/compliance concerns?

## Phase 3: Deep Dive (As Needed)

Only ask these when relevant to the specific project.

### For Libraries/Packages
- What's the public API surface?
- Sync or async? Or both?
- Error handling philosophy? (exceptions, result types, error codes)
- How should it be distributed? (npm, PyPI, crates.io, vendored)

### For CLI Tools
- What are the main commands/subcommands?
- Interactive or scriptable? Both?
- Configuration: flags, env vars, config files?
- How should it handle stdin/stdout/stderr?

### For Services/APIs
- REST, GraphQL, gRPC, or something else?
- Authentication/authorization requirements?
- Rate limiting, quotas?
- Versioning strategy?

### For Integrations
- What systems does this connect?
- APIs available? Quality of documentation?
- Auth mechanisms for each system?
- Failure modes and retry strategies?

## Anti-Patterns to Avoid

**Don't ask everything at once.** Group questions logically, pause for answers.

**Don't ask what you can infer.** If they say "Python CLI tool," don't ask "what language?"

**Don't ask hypotheticals too early.** Understand the core problem before exploring edge cases.

**Don't let ambiguity slide.** If an answer is vague, probe deeper: "Can you give me an example?"

## Synthesis Checkpoint

Before moving to design, verify understanding:

> "Let me make sure I understand: You want to build {X} that {does Y} for {audience Z}. The MVP would {minimal scope}. Key constraints are {constraints}. Is that right?"

Get explicit confirmation before proceeding.
