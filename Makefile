clone-all:
	git clone --recurse-submodules git@github.com:redprods/redprod-chat-web.git ./web
	git clone --recurse-submodules git@github.com:redprods/redprod-chat-auth.git ./auth
	git clone --recurse-submodules git@github.com:redprods/redprod-chat-messenger.git ./messenger
	git clone --recurse-submodules git@github.com:redprods/redprod-chat-notification.git ./notify

up:
	docker-compose \
		--env-file ./envs/dev.env \
		up -d

build:
	docker-compose \
		--env-file ./envs/dev.env \
		build