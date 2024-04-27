# Show help message
[private]
@default:
    just --list

# Run postgres and pg_admin in docker containers
@run-postgres:
	docker compose -f docker/docker-compose.postgres.yaml up -d

# Stop postgres and pg_admin in docker containers
@stop-postgres:
	docker compose -f docker/docker-compose.postgres.yaml down

# Run clickhouse in docker container
@run-clickhouse:
	docker compose -f docker/docker-compose.clickhouse.yaml up -d

# Stop clickhouse in docker container
@stop-clickhouse:
	docker compose -f docker/docker-compose.clickhouse.yaml down

# Run brokers (Kafka, Rabbit, Redis, Nats) for test in docker containers
@run-brokers:
	docker compose -f docker/docker-compose.brokers.yaml up -d

# Stop brokers (Kafka, Rabbit, Redis, Nats) for test in docker containers
@stop-brokers:
	docker compose -f docker/docker-compose.brokers.yaml down

# Run rabbit in docker container
@run-rabbit:
	docker compose -f docker/docker-compose.rabbit.yaml up -d

# Stop rabbit in docker container
@stop-rabbit:
	docker compose -f docker/docker-compose.rabbit.yaml down
