#!/bin/bash

git config --global --add safe.directory /sites/grisha-space

# Пересобираем и перезапускаем контейнеры
docker compose down

# Стягиваем последние изменения из репозитория
git pull origin main

export RAILS_MASTER_KEY=fec7452e23abaf4d469f7ff0a9a281dd
docker compose up --build -d

# Логируем успех
echo "Deployed successfully at $(date)" >> /var/log/webhook_logs/webhook_deploy.log

# Опционально: удалить неиспользуемые Docker образы и контейнеры
docker system prune -f