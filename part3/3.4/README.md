# EXERCISE 3.4: BUILDING IMAGES FROM INSIDE OF A CONTAINER

Build image with `docker build -t builder .` and run it with following command:

```
docker run \
  -e DOCKERHUB_USER=<dockerhub_username> \
  -e DOCKERHUB_PASSWORD=<dockerhub_password> \
  -v /var/run/docker.sock:/var/run/docker.sock \
  builder <github_repository> <dockerhub_repository>
```
