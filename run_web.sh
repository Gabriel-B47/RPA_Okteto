python manage.py makemigrations myproject
echo "Created migrations"

python manage.py migrate
echo "Migrated DB to latest version"

echo "Starting server"
gunicorn simple_rbas.wsgi