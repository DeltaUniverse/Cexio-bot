# Makefile

# Tentukan variabel untuk sistem operasi
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	RUN_SCRIPT_CMD = ./run.sh
else
	RUN_SCRIPT_CMD = run.bat
endif

up:
	docker-compose up -d

down:
	docker-compose down

run-script:
ifeq ($(UNAME_S),Linux)
	chmod +x run.sh
	$(RUN_SCRIPT_CMD)
else
	@echo "This command is not supported on Windows."
endif

run-bat:
ifeq ($(UNAME_S),Windows_NT)
	$(RUN_SCRIPT_CMD)
else
	@echo "This command is not supported on Unix-like systems."
endif

logs:
	docker-compose logs -f

clean:
	docker-compose down --rmi all --volumes --remove-orphans

help:
	@echo "Usage:"
	@echo "  make up         - Start the Docker containers in detached mode"
	@echo "  make down       - Stop and remove Docker containers"
	@echo "  make run-script - Make the run.sh script executable and run it (Linux only)"
	@echo "  make run-bat    - Run the run.bat script (Windows only)"
	@echo "  make logs       - Tail the logs of Docker containers"
	@echo "  make clean      - Stop containers, remove images, volumes, and orphan containers"

.PHONY: up down run-script run-bat logs clean help
