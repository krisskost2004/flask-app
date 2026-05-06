# Flask Web App в Conda-окружении (Anaconda Docker)

## Требования
- Docker

## Проверка
```bash
## Сборка образа
docker build -t username-webapp:latest .

## Запуск контейнера
```bash
docker run -d -p 8080:5000 --name username-webapp username-webapp:latest

## Проверка доступности приложения
```bash
curl http://localhost:8080

## Проверка пользователя внутри контейнера
```bash
docker exec username-webapp whoami
