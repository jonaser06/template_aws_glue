# Variables
JOB_NAME :=

# Targets
.PHONY: list_jobs
list_jobs:
	@echo "Available jobs:"
	@ls -1 jobs/
	@echo ""

.PHONY: run_job
run_job:
ifeq ($(JOB_NAME),)
	@echo "Please specify a job name: make run_job JOB_NAME=<job_name>"
else
	@echo "Running job $(JOB_NAME)"
	@$(DOCKER_COMPOSE_RUN) python jobs/$(JOB_NAME)/job.py --job-name $(JOB_NAME)
endif
