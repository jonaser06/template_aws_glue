# Variables
DOCKER_COMPOSE_FILE := docker-compose.yml
DOCKER_COMPOSE_RUN := docker-compose run --rm glue
JOB_NAME := hello_world

# Includes
include makefiles/*.mk

# Targets
.PHONY: help
help:
    @echo "Usage:"
    @echo "  make start                  - Start Docker containers"
    @echo "  make stop                   - Stop Docker containers"
    @echo "  make build                  - Build Docker container"
    @echo "  make run JOB_NAME=<job>     - Run a job"
    @echo "  make list-jobs              - List available jobs"

.PHONY: start
start:
    docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

.PHONY: stop
stop:
    docker-compose -f $(DOCKER_COMPOSE_FILE) down

.PHONY: build
build:
    docker-compose -f $(DOCKER_COMPOSE_FILE) build

.PHONY: run
run:
    $(DOCKER_COMPOSE_RUN) --job-name $(JOB_NAME)

.PHONY: list-jobs
list-jobs:
    $(DOCKER_COMPOSE_RUN) list_jobs