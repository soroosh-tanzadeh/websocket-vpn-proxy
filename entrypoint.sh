#!/bin/bash
sed -i "s/{UUID}/${UUID}/" /etc/v2ray/config.json
nginx &&
v2ray run -c /etc/v2ray/config.json
