---
name: architecture-review
description: Reviews project architecture, service boundaries, module structure, deployment shape and maintainability risks. Use when the user asks how to organize a project, whether architecture will scale, whether to split a service, how to simplify structure, or how to reduce coupling.
---

# Architecture Review

## When To Use

Use this skill for questions like:

- "Как лучше организовать проект?"
- "Не развалится ли архитектура?"
- "Надо ли выделять отдельный сервис?"
- "Как упростить структуру?"
- "Где границы модулей или сервисов?"

## Workflow

1. Read `README.md`, `AGENTS.md`, `.cursor/rules/` and the current project structure.
2. Identify the main runtime units: API, workers, jobs, UI, databases, queues, external services.
3. Find coupling points: shared state, shared packages, direct DB access, duplicated business rules, implicit deployment dependencies.
4. Separate current pain from future guesses.
5. Prefer the smallest architecture change that reduces real risk.
6. Do not recommend splitting into services unless operational benefit is clear.
7. Present a short plan before proposing large refactoring.

## Review Questions

- What is the main responsibility of each module or service?
- Which parts change together?
- Which parts deploy together?
- Where can data consistency break?
- Where can a failure cascade?
- What is hard to test or support?
- What can be simplified without changing behavior?

## Output Format

Use this structure:

```markdown
## Короткий вывод

Один абзац: оставить как есть, упростить, разделить или подготовить к разделению.

## Что вижу

- Факт из кода или структуры.
- Факт из deployment или runtime.

## Риски

- Конкретный риск и почему он важен.

## План

1. Маленький безопасный шаг.
2. Следующий шаг, если первый подтвердил проблему.
3. Проверка результата.
```

## Decision Rules

- Monolith is fine when one team deploys one runtime and boundaries are not painful.
- Split a service only when independent scaling, release cadence, fault isolation or ownership pays for operational cost.
- Extract a package before extracting a service when the main problem is code organization.
- Add architecture documents only when they help future support decisions.
- Keep public behavior stable during refactoring.
