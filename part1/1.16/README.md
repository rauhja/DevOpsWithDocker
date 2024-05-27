# 1.16 CLOUD DEPLOYMENT

Deployed dockerized fastapi app to Heroku.

[Dockerfile](./Dockerfile)

`--platform=linux/amd64` is added to the `FROM` command to specify the platform as linux/amd64.

Used following commands to deploy the app to Heroku:

```
heroku login
heroku stack:set container
heroku container:login
heroku container:push web
heroku container:release web
```

The app is now running at [https://dwd-24-1bd7600d895e.herokuapp.com](https://dwd-24-1bd7600d895e.herokuapp.com)
