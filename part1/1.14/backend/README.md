# Enviroment, backend!

## Build image and run container

This is a simple backend application that listens on port 8080. To build the image and run the container, use the following commands:

```bash
% docker build --platform linux/amd64 -t backend .
% docker run --rm -p 8080:8080 backend
```
