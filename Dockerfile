FROM alpine:3.15.0

RUN apk add --no-cache strongswan

CMD ["ipsec", "--nofork"]
