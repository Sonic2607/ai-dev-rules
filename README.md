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
templates/
  AGENTS-go.md
  AGENTS-web.md
  AGENTS-worker.md
  README-template.md
collections/             # место для будущих наборов правил
README.md
```

## Быстрое подключение

Скопировать весь Cursor-набор в проект:

```bash
cp -r ~/ansible_config/ai-dev-rules/cursor ./.cursor
```

Или синхронизировать содержимое:

```bash
mkdir -p .cursor
rsync -av ~/ansible_config/ai-dev-rules/cursor/ .cursor/
```

После этого в проекте появятся:

- `.cursor/AGENTS.md`
- `.cursor/rules/*.mdc`
- `.cursor/skills/*/SKILL.md`
- `.cursor/project-types/*.txt`

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
