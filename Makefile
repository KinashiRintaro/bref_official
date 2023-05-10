first:
	composer require bref/bref bref/laravel-bridge
	cp .env.example .env
	composer dump-autoload
	docker-compose up -d --build
clean:
	docker compose down --rmi all --volumes --remove-orphans
fresh:
	docker compose exec web php artisan migrate:fresh --seed
