Read the [Bref Laravel documentation](https://bref.sh/docs/frameworks/laravel.html) and make sure you have [everything to get started](https://bref.sh/docs/installation.html) first.

## Setup

```bash
composer install --optimize-autoloader --no-dev
```

## Deployment

The application can be deployed on AWS by running:

```bash
php artisan config:clear

serverless deploy
```

Read more in [the official Bref documentation](https://bref.sh/docs/frameworks/laravel.html).

## Local development

The application can be run locally using Docker. Start it by running:

```bash
docker-compose up
```

The application is then available at [http://localhost:8000/](http://localhost:8000/).

## PRの状態を再現する手順
```
composer require bref/bref bref/laravel-bridge

cp .env.example .env

composer dump-autoload

docker-compose up -d --build
```
