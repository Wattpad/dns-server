# Django DNS Server

## Installation

Needed: Python 2.7 (Twisted's DNS server isn't supported in version 3, unfortunately.)

1. `git clone https://github.com/Wattpad/dns-server`
2. `virtualenv2 virtualenv`
3. Make sure `virtualenv/bin` is in `PATH`.
4. `cd dns-server`
5. `pip install -r requirements.txt`


## Production use

Install Docker and run `docker run -p "53:10053/tcp" -p "53:10053/udp"`


## Developing

Run:

- `./manage.py dns_server` for DNS interface (listens on TCP/UDP 10053)

- `./manage.py test` runs tests.
