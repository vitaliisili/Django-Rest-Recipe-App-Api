up:
	docker-compose up

down:
	docker-compose down

build:
	docker-compose build

linter:
	docker-compose run --rm app sh -c "flake8"

startproject:
	docker-compose run --rm app sh -c "django-admin startproject config ."

test:
	docker-compose run --rm app sh -c "python manage.py test"

startapp:
	docker-compose run --rm app sh -c "python manage.py startapp $(app)"

makemigrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"

migrate:
	docker-compose run --rm app sh -c "python manage.py migrate"