clone-all:
	git clone --recurse-submodules git@github.com:redprods/redprod-chat-web.git ./web
	git clone --recurse-submodules git@github.com:redprods/redprod-chat-auth.git ./auth
	git clone --recurse-submodules git@github.com:redprods/redprod-chat-messenger.git ./messenger

pull-all:
	cd web/
	git pull

	cd ../auth
	git pull

	cd ../messenger
	git pull

up:
	docker-compose \
		--env-file ./envs/dev.env \
		up -d

build:
	docker-compose \
		--env-file ./envs/dev.env \
		build