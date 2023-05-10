install:
	@make clean
	@make build
	@make up
	docker compose exec web composer install
	docker compose exec web cp .env.example .env
	docker compose exec web php artisan key:generate
	docker compose exec web php artisan storage:link
	docker compose exec web chmod -R 777 storage bootstrap/cache
clean:
	docker compose down --rmi all --volumes --remove-orphans
build:
	docker compose build --no-cache --force-rm
up:
	docker compose up -d
down:
	docker compose down
fresh:
	docker compose exec web php artisan migrate:fresh --seed
