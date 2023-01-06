FROM teddysun/v2ray

RUN apk update \
    && apk add nginx

COPY conf/config.json /etc/v2ray
COPY conf/site.conf /etc/nginx/http.d/default.conf
COPY entrypoint.sh /entrypoint.sh
COPY www/ /www/

RUN chmod +x /entrypoint.sh
CMD ["sh","/entrypoint.sh"]