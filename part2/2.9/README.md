# Exercise 2.9

To run the container, run `docker compose up -d`.

Test the application by visiting `http://localhost` in your browser.

To stop the container, run `docker compose down`.

## Changes

From frontend dockerfile `REACT_APP_BACKEND_URL` is set to `http:localhost/api`

From backend dockerfile `REQUEST_ORIGIN` is unneccessary because NGINX does request handling.
