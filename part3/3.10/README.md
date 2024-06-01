# EXERCISE 3.10

Original dockerfile: [Part 1 / 1.16](../../part1/1.16/Dockerfile)

Optimized dockerfile: [Dockerfile](./Dockerfile)

```
REPOSITORY                                   TAG             IMAGE ID       CREATED             SIZE
Original                                     latest          e3be8b4b0e02   About an hour ago   1.12GB
Optimized                                    latest          62ec082e22bc   2 minutes ago       143MB
```

Image size was reduced from 1.12GB to 143MB. This was done by using a multi-stage build and using a smaller base images. Non-root user was also added to the image.
