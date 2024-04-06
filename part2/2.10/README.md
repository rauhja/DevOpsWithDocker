# Exercise 2.10

To run the container, run `docker compose up -d`.

Test the application by visiting `http://localhost` in your browser.

To stop the container, run `docker compose down`.

## Changes

No changes needed.

```
% docker run -it --rm --network host networkstatic/nmap localhost
Starting Nmap 7.92 ( https://nmap.org ) at 2024-04-06 12:56 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.0000020s latency).
Other addresses for localhost (not scanned): ::1
Not shown: 998 closed tcp ports (reset)
PORT    STATE    SERVICE
80/tcp  filtered http
111/tcp open     rpcbind

Nmap done: 1 IP address (1 host up) scanned in 1.35 seconds
```
