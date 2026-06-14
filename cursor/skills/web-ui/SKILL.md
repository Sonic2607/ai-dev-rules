---
name: web-ui
description: Helps build and review web UI components, frontend state, forms, accessibility, API integration and user-facing behavior. Use when working with React, TypeScript, JavaScript, CSS, routing, frontend tests, or UI bug fixes.
---

# Web UI

## Workflow

1. Read existing component, routing, styling and state-management patterns.
2. Keep changes scoped to the requested behavior.
3. Reuse the local UI kit and helper APIs.
4. Model loading, empty, error and success states.
5. Keep API calls outside purely presentational components when the project structure supports it.
6. Verify accessibility basics: labels, focus, keyboard navigation and contrast.
7. Run formatter, typecheck and relevant tests when available.

## Component Rules

- Use clear props and avoid hidden global coupling.
- Avoid large components that mix rendering, data fetching and business rules.
- Do not add new dependencies unless they solve a real problem.
- Prefer explicit user-facing error messages.
- Keep client-side validation for UX; server-side validation is still required.

## Security Rules

- Never expose secrets in frontend code.
- Treat all server responses and user input as untrusted.
- Avoid unsafe HTML injection. If it is required, sanitize input first.
- Do not log PII or sensitive payloads in browser console.

## Review Checklist

- [ ] UI covers loading, empty and error states.
- [ ] Components follow existing style.
- [ ] Forms are accessible and validated.
- [ ] API failures are handled.
- [ ] No secret or PII leakage.
- [ ] Typecheck and tests are updated when needed.
