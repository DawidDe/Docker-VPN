FROM alpine:latest

RUN apk add --no-cache openvpn bash
RUN mkdir -p /etc/openvpn

COPY ./config.ovpn /etc/openvpn/config.ovpn
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 1194/udp
ENTRYPOINT [ "/entrypoint.sh" ]