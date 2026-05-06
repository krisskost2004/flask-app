# Flask Web App в Conda-окружении (Anaconda Docker)

## Требования
- Docker

## Проверка
```bash
## Сборка образа
docker build -t username-webapp:latest .

## Запуск контейнера
docker run -d -p 8080:5000 --name username-webapp username-webapp:latest

## Проверка доступности приложения
curl http://localhost:8080

## Проверка пользователя внутри контейнера
docker exec username-webapp whoami
