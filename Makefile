NAME=letsencrypt-route53
VERSION=1.0.0
IMAGE=dang3r/$(NAME)

build:
	docker build -t $(IMAGE) -t $(IMAGE):$(VERSION) .

run:
	docker-compose up --build letsencrypt
