build-dev:
	docker-compose \
		--env-file ./envs/dev.env\
		build

build-production:
	docker-compose \
		--env-file ./envs/production.env\
		build
	
dev-up:
	docker-compose \
		--env-file ./envs/dev.env \
		up -d

production-up:
	docker-compose \
		--env-file ./envs/production.env \
		up -d