# Project Name

Коротко опиши, что делает проект и какую проблему решает.

## Запуск локально

```bash
make run
```

## Сборка

```bash
make build
```

## Конфигурация

Переменные окружения:

- `PROJECT_NAME` - имя проекта для логов и метрик.
- `MACHINE_NAME` - имя машины или окружения.
- `LOG_LEVEL` - уровень логирования.

## Проверка

```bash
make test
make lint
```

## Deployment

Опиши, как сервис устанавливается и запускается: systemd, Docker, Ansible или другой способ.

## Observability

- Логи: JSON в stdout.
- Healthcheck: `/healthz`, если проект использует HTTP.
- Metrics: `/metrics`, если проект экспортирует Prometheus-метрики.
