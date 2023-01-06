#!/bin/bash
sed -i "s/{UUID}/${UUID}/" /etc/v2ray/config.json
nginx &&
/usr/bin/v2ray run -config /etc/v2ray/config.json
