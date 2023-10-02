run:
	docker-compose up

build:
	docker-compose build

linter:
	docker-compose run --rm app sh -c "flake8"

startproject:
	docker-compose run --rm app sh -c "django-admin startproject config ."

test:
	docker-compose run --rm app sh -c "python manage.py test"