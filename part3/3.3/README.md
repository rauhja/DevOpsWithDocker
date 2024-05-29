# 3.3: SCRIPTING MAGIC

The bash script gets the parameters from the user, then clones the repository and builds the Docker image. The script is run with the following command:

```
docker login
chmod +x builder.sh
./builder.sh <github_repo> <dockerhub_repo>
```
