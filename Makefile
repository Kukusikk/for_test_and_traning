run-script: 
	docker-compose run --rm my ruby -rdebug test1.rb

build: 
	docker-compose build

all: 
	make build
	make run-script