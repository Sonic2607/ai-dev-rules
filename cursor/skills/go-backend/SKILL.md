---
name: go-backend
description: Use when creating, modifying, reviewing or debugging Go backend services, HTTP APIs, workers, WebSocket clients, PostgreSQL access, Redis usage, logging, metrics, graceful shutdown, or systemd deployment.
---

# Go Backend Skill

## When to use

Use this skill for:
- Go backend services
- HTTP API handlers
- WebSocket clients
- workers and daemons
- PostgreSQL access
- Redis integration
- logging and metrics
- graceful shutdown

## Workflow

1. Read `README.md`, `AGENTS.md`, local `.cursor/rules/` and existing code style.
2. Analyze architecture before editing.
3. Propose a short plan and affected files.
4. Keep `cmd/<service>/main.go` minimal.
5. Put business logic into `internal/`.
6. Prefer simple Go over abstractions.
7. Add interfaces only when there is a real need.
8. Run or suggest `gofmt`, `goimports`, `go test ./...`, `go vet ./...`.

## Review checklist

- [ ] Code follows `cmd/internal/pkg`.
- [ ] Errors are handled and wrapped with context.
- [ ] Long-running operations use `context.Context`.
- [ ] Shutdown releases resources cleanly.
- [ ] DB/Redis calls are bounded by context or timeout.
- [ ] Logs do not expose secrets or PII.
- [ ] README, AGENTS.md and CHANGELOG.md are updated when behavior changes.