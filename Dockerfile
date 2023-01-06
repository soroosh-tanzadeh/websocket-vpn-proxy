FROM v2fly/v2fly-core

RUN apk update \
    && apk add nginx

RUN apk add bash

COPY conf/config.json /etc/v2ray
COPY conf/site.conf /etc/nginx/http.d/default.conf
COPY entrypoint.sh /entrypoint.sh
COPY www/ /www/

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["bash","/entrypoint.sh"]