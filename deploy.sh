#!/bin/bash

# Стягиваем последние изменения из репозитория
git pull origin main

# Пересобираем и перезапускаем контейнеры
docker-compose down
docker-compose up --build -d

# Опционально: удалить неиспользуемые Docker образы и контейнеры
docker system prune -f

# Логируем успех
echo "Deployed successfully at $(date)" >> /var/log/webhook_deploy.log