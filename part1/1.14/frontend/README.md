# Enviroment, frontend!

## Build image and run container

This is a simple frontend application that listens on port 5678. To build the image and run the container, use the following commands:

```bash
% docker build . -t frontend
% docker run --rm -p 5678:5678 frontend
```
