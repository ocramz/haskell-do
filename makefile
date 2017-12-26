IMAGE_NAME:=theam/haskell-do

ghcjs:
	stack setup --stack-yaml=client-stack.yaml

main:
	stack Build.hs -a

docker:
	docker build -t ${IMAGE_NAME} src/docker/

docker-run:
	docker run -p 8080:8080 -d ${IMAGE_NAME}
