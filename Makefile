up:
	docker-compose up -d

down:
	docker-compose down

run-script:
	chmod +x run.sh
	./run.sh

run-bat:
	./run.bat

clean:
	docker-compose down --rmi all --volumes --remove-orphans

help:
	@echo "Usage:"
	@echo "  make up         - Start the Docker containers in detached mode"
	@echo "  make down       - Stop and remove Docker containers"
	@echo "  make run-script - Make the run.sh script executable and run it"
	@echo "  make run-bat    - Run the run.bat script (Windows only)"
	@echo "  make clean      - Stop containers, remove images, volumes, and orphan containers"

.PHONY: up down run-script run-bat clean help
