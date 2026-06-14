---
name: postgres
description: Helps design, review and modify PostgreSQL schemas, migrations, indexes and queries. Use when working with SQL, PostgreSQL performance, data migrations, transactions, constraints, or Go database access.
---

# PostgreSQL

## Workflow

1. Identify the current migration tool and schema conventions.
2. Read existing queries and indexes before changing schema.
3. Prefer safe incremental migrations for production tables.
4. Use transactions where atomicity is required.
5. Validate queries with `EXPLAIN` or existing tests when practical.
6. Document risk when a migration can lock large tables or rewrite data.

## Migration Rules

- Avoid one huge migration when phased rollout is safer.
- For big tables prefer: add nullable column, backfill, add constraint, then enforce not-null.
- Add indexes for real query patterns, not guesses.
- Do not drop columns or data without an explicit request and backup/migration plan.
- Keep rollback limitations visible when down migrations cannot restore data.

## Query Rules

- Use parameterized SQL.
- Avoid N+1 queries on request paths.
- Keep transactions short.
- Use context-aware DB calls in Go.
- Do not log sensitive values or full query parameters if they may contain PII.

## Review Checklist

- [ ] Migration is safe for existing data.
- [ ] Indexes match filters, joins and ordering.
- [ ] Constraints reflect business invariants.
- [ ] Queries are parameterized.
- [ ] Transaction boundaries are clear.
