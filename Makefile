build-dev:
	@docker build -t devcontainer-demo/dev:latest . -f ./dev.Dockerfile
build-prod:
	@docker build -t devcontainer-demo/prod:latest . -f ./prod.Dockerfile