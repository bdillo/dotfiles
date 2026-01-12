---
name: idea-sketch
description: Lightweight brainstorming for personal projects. Use when someone has a rough idea they want to flesh out before coding — not for formal design docs or architecture decisions. Triggers on "I have an idea", "I want to build something", "help me think through", or when someone describes a vague project concept they want to clarify.
---

# Idea Sketch

Help turn a vague idea into a clear starting point. Keep it conversational and lightweight.

## Process

### 1. Understand the Core Idea

Ask **one or two** questions to get clarity:

- What's the basic idea? (if not already clear)
- What's the simplest version that would be useful?

Don't interrogate. If the idea is already clear, skip straight to sketching.

### 2. Sketch It Out

Respond with a short sketch covering:

**What it is** — One sentence summary

**Core functionality** — 3-5 bullet points of what it actually does

**What it doesn't do** — 1-2 things explicitly out of scope (helps focus)

**Starting point** — A concrete first step or two to begin building

### 3. Offer to Go Deeper (Optional)

After the sketch, ask if they want to:
- Explore any part further
- Think through technical approach
- Just start building

Don't push toward more planning if they're ready to code.

## Example Output

> **What it is:** A CLI tool that watches a directory and auto-commits changes with AI-generated commit messages.
>
> **Core functionality:**
> - Watch specified directory for file changes
> - Generate commit message from diff using Claude API
> - Auto-commit (with optional confirmation prompt)
> - Simple config file for API key and watched paths
>
> **Not in scope:** Branch management, PR creation, multi-repo support
>
> **Starting point:** Get a basic file watcher working that prints diffs to stdout. Then add the Claude API call.

## Anti-Patterns

- Don't turn this into a full design session unless asked
- Don't ask more than 2 questions before providing value
- Don't suggest architecture patterns, dependency choices, or project structure
- Don't create files unless asked — the sketch can just be in chat
