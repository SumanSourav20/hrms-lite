echo "Creating migrations..."
uv run python manage.py makemigrations

echo "Migrating..."
uv run python manage.py migrate

echo "Starting Server..."
uv run gunicorn hrmslite.wsgi:application --bind 0.0.0.0:8000