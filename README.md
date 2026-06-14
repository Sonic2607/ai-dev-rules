# AI Dev Rules

Набор переиспользуемых правил, skills и шаблонов для AI-агентов в Cursor.

Цель репозитория - быстро подключать одинаковые инженерные стандарты к новым проектам.

## Структура

```text
cursor/
  AGENTS.md              # базовые инструкции для проекта
  rules/                 # Cursor project rules
  skills/                # Cursor Agent Skills
  project-types/         # списки правил по типам проектов
scripts/
  bootstrap.sh           # установка правил в проект
  update.sh              # обновление правил в проекте
templates/
  AGENTS-go.md
  AGENTS-web.md
  AGENTS-worker.md
  README-template.md
collections/             # место для будущих наборов правил
README.md
```

## Быстрое подключение

Находясь в корне любого проекта, выполнить:

```bash
curl -fsSL \
  https://raw.githubusercontent.com/Sonic2607/ai-dev-rules/main/scripts/bootstrap.sh \
  | bash
```

После этого в проекте появятся:

- `.cursor/AGENTS.md`
- `.cursor/rules/*.mdc`
- `.cursor/skills/*/SKILL.md`
- `.cursor/project-types/*.txt`

## Обновление

Чтобы обновить правила в уже подключенном проекте:

```bash
curl -fsSL \
  https://raw.githubusercontent.com/Sonic2607/ai-dev-rules/main/scripts/update.sh \
  | bash
```

`update.sh` синхронизирует содержимое `cursor/` из репозитория в `.cursor/` текущего проекта.

> Важно: `bootstrap.sh` полностью пересоздает `.cursor/`, а `update.sh` удаляет из `.cursor/` файлы, которых больше нет в репозитории.

## Project Types

Файлы в `cursor/project-types/` напоминают, какие правила обычно подключать для конкретного типа проекта:

- `go-service.txt`
- `telegram-webapp.txt`
- `worker.txt`
- `websocket-service.txt`
- `cron-service.txt`

## Templates

`templates/` - это библиотека заготовок. Используй её, когда нужен не полный Cursor-набор, а стартовый документ для конкретного проекта.

## Принципы

- Изменения должны быть маленькими, понятными и обратимыми.
- Код должен следовать стилю конкретного проекта.
- Секреты нельзя хранить в коде, правилах, шаблонах и логах.
- Инфраструктурные изменения должны быть идемпотентными.
- Code review должен сначала искать баги, риски и регрессии.
