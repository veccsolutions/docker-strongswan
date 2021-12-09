FROM alpine:3.15.0

RUN apk add --no-cache strongswan openssl

VOLUME /etc/ipsec.d/aacerts
VOLUME /etc/ipsec.d/acerts
VOLUME /etc/ipsec.d/cacerts
VOLUME /etc/ipsec.d/certs
VOLUME /etc/ipsec.d/crls
VOLUME /etc/ipsec.d/ocspcerts
VOLUME /etc/ipsec.d/private
VOLUME /etc/ipsec.d/reqs

CMD ["ipsec", "start", "--nofork", "--auto-update", "10"]
