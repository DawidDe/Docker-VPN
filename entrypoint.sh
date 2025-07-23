#!/bin/bash

set -e
exec openvpn --config /etc/openvpn/config.ovpn --auth-user-pass /etc/openvpn/creds.txt