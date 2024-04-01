Used following docker image for the app:
https://hub.docker.com/r/devopsdockeruh/coursepage

Used the following commands to deploy the app to Heroku:

```
heroku login
docker pull devopsdockeruh/coursepage
docker tag f9d1d1db8d35 registry.heroku.com/dwd-24/web
docker push registry.heroku.com/dwd-24/web
heroku container:release web --app=dwd-24
```

The app is now running at https://dwd-24-880247621cba.herokuapp.com
