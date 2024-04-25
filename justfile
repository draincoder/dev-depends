# Show help message
[private]
@default:
    just --list

# Run postgres and pg_admin in docker containers
@run-postgres:
	docker compose -f docker/docker-compose.postgres.yaml up -d
