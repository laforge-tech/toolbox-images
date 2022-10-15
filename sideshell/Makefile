DOCKER_IMG=laforgetech/sideshell
DOCKER_TAG=0.0.1

image:
	docker build -t ${DOCKER_IMG}:${DOCKER_TAG} -t  ${DOCKER_IMG}:latest .

push:
	docker push ${DOCKER_IMG}:${DOCKER_TAG}
	docker push ${DOCKER_IMG}:latest
