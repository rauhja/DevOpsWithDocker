# Exercise 3.6

The optimazation of the Dockerfiles is done by joining `RUN` command and removing unnecessary files. Just by joining run commands, the backend image couldn't be reduced.

```
REPOSITORY                                   TAG             IMAGE ID       CREATED              SIZE
backend_before                               latest          b573936fa114   52 seconds ago       440MB
backend_after                                latest          3341ab12b1da   About a minute ago   440MB
frontend_before                              latest          50f128e67ebc   44 minutes ago       481MB
frontend_after                               latest          73ca0879f835   About a minute ago   126MB
```
