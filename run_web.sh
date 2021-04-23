python manage.py makemigrations 
echo "Created migrations"

python manage.py migrate
echo "Migrated DB to latest version"


gunicorn rpa_project.wsgi
echo "Starting server"
