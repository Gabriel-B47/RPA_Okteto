# prepare init migration

python manage.py makemigrations rpa_project
echo "Created migrations"

# migrate db, so we have the latest db schema

python manage.py migrate
echo "Migrated DB to latest version"

#start server

echo "Starting server"
gunicorn rpa_project.wsgi