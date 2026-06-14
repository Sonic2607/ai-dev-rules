---
name: ansible
description: Helps create and review Ansible roles, playbooks, inventory, templates, handlers and deployment tasks. Use when working with infrastructure automation, systemd units, exporters, firewalls, package installs, service configuration, or ansible-lint issues.
---

# Ansible

## Workflow

1. Read `README.md`, `AGENTS.md`, `CLAUDE.md` and local playbook standards if present.
2. Check existing roles and variables before adding new structure.
3. Keep changes small, idempotent and reversible.
4. Put reusable service logic into roles.
5. Use handlers for service restart or reload.
6. Validate generated configs before restarting services when possible.
7. Run syntax check, `ansible-lint` or a safe `--check` run when practical.

## Role Defaults

For new service roles prefer:

```text
roles/<role_name>/
  defaults/main.yml
  tasks/main.yml
  handlers/main.yml
  templates/
  files/
```

Create only directories that are useful for the current role.

## Safety Rules

- Do not store secrets in plain text.
- Do not put real tokens in comments or examples.
- Use `ansible.builtin.*` modules by default.
- If using `shell` or `command`, add idempotency guards when possible.
- Set `owner`, `group` and `mode` for managed files.
- Avoid host-specific hardcoded paths and values.

## Review Checklist

- [ ] Tasks are idempotent.
- [ ] Variables are in defaults, group vars or host vars.
- [ ] Templates do not expose secrets.
- [ ] Service changes notify handlers.
- [ ] Config validation exists when practical.
- [ ] The playbook has a clear single purpose.
