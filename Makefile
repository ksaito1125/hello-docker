NAME=hello-world
PORT=8080

all:

build:
	docker build -t $(NAME) .

run: build
	docker run --name $(NAME) -it -p $(PORT):8005 --rm $(NAME)

kill:
	-docker rm -f $(NAME)
