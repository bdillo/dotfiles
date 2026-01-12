---
name: software-design
description: Structured process for designing software projects and libraries before implementation. Use when a user has a project idea and wants to think it through systematically, create a design document, or prepare a specification before coding. Triggers on phrases like "I want to build...", "help me design...", "I have an idea for...", or explicit requests for design docs, project planning, or architecture decisions.
---

# Software Design Skill

Transform project ideas into well-structured design documents through guided discovery.

## Workflow

### 1. Discovery Phase

Load [discovery-questions.md](references/discovery-questions.md) for the full questioning framework.

**Process:**
- Start with Phase 1 questions (problem + vision)
- Ask 2-4 questions at a time, not all at once
- Adapt follow-up questions based on answers
- Probe vague answers: "Can you give an example?"

**Conclude discovery with a synthesis checkpoint:**
> "Let me make sure I understand: [summary]. Is that right?"

Get explicit confirmation before proceeding.

### 2. Design Phase

Once requirements are clear, draft the design document.

**Use the template:** Copy [design-doc-template.md](assets/design-doc-template.md) and fill in sections based on discovery answers.

**Consult [architecture-decisions.md](references/architecture-decisions.md)** when making technical choices to ensure tradeoffs are considered.

**Key sections to fill thoughtfully:**
- Goals & Non-Goals (scope clarity)
- API / Interface Design (how users interact)
- Technical Decisions (language, deps, patterns)
- Open Questions (unknowns to flag)
- Implementation Plan (phased approach)

**Skip sections that don't apply.** Not every project needs a data model or risk matrix.

### 3. Review & Iterate

Present the draft design document and invite feedback:
- Are any sections unclear or incomplete?
- Do the technical decisions feel right?
- Is anything missing?
- Are the open questions the right ones?

Revise based on feedback. The document should be useful for implementation.

### 4. Output

Save the final design document as `{project-name}-design.md`.

The document should be:
- **Complete enough** to start implementation without re-asking basic questions
- **Concise enough** to actually read
- **Honest** about unknowns and risks

## What This Skill Does NOT Do

- Generate implementation code (that comes after the design doc)
- Make decisions for the user (present tradeoffs, let them choose)
- Require filling every template section (adapt to the project)
- Work for projects with no defined problem (the user needs at least a rough idea)
