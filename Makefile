configure:
	docker compose pull
	[ -f ./.env ] && echo ".env already exists" || cp .env.example .env
run:
	docker compose up -d --remove-orphans
stop:
	docker compose down
