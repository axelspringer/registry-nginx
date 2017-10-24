FROM nginx:1.13.5

COPY \
    nginx.conf /etc/nginx/nginx.conf

COPY \
    init.sh /init.sh

RUN \
    chmod +x /init.sh

EXPOSE 80

STOPSIGNAL SIGTERM

ENTRYPOINT ["/init.sh"]

CMD ["nginx", "-g", "daemon off;"]
