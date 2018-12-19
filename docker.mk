include .env

.PHONY: up down stop prune scale

default: up

up:
	@echo "Starting up containers for $(PROJECT_NAME)..."
	docker-compose pull
	docker-compose up -d --remove-orphans
	@echo "Apache Kafka and Apache Zookeeper up for $(PROJECT_NAME)"
	@echo "Dashboard at http://${PROJECT_BASE_URL}:${DASHBOARD_PORT}"
	@echo "Kafka at http://${PROJECT_BASE_URL}:${KAFKA_PORT}"
	@echo "Zookeeper at http://${PROJECT_BASE_URL}:${ZOOKEEPER_PORT}"

down: stop

stop:
	@echo "Stopping containers for $(PROJECT_NAME)..."
	@docker-compose stop

prune:
	@echo "Removing containers for $(PROJECT_NAME)..."
	@docker-compose down -v

scale:
	@echo "Scaling Kafka to $(kafka)"
	@docker-compose scale kafka=$(kafka)

# https://stackoverflow.com/a/6273809/1826109
%:
	@: