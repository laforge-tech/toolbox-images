DOCKER_IMG=laforgetech/sideshell
DOCKER_TAG=0.0.4

image:
	docker buildx build -t ${DOCKER_IMG}:${DOCKER_TAG} -t ${DOCKER_IMG}:latest --platform linux/arm64,linux/amd64 --push .

push:
	docker push ${DOCKER_IMG}:${DOCKER_TAG}
	docker push ${DOCKER_IMG}:latest
