#!/bin/sh

# O shell irá encerrar a execução do script quando um comando falhar
set -e

# Dê um tempo para a rede do Docker inicializar antes de checar o host
echo "--- Aguardando a rede do Docker estabilizar..."
sleep 3

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  echo "🟡 Waiting for Postgres Database Startup ($POSTGRES_HOST $POSTGRES_PORT) ..."
  sleep 2
done

echo "✅ Postgres Database Started Successfully ($POSTGRES_HOST:$POSTGRES_PORT)"

python manage.py collectstatic --noinput
python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py runserver 0.0.0.0:8000
