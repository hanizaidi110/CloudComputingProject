FROM nginx

RUN rm /etc/nginx/nginx.conf
COPY  nginx.conf /etc/nginx/
COPY fix-nginx-conf.sh /etc/nginx/

VOLUME ["/hypervisor_etc"]

EXPOSE 80

CMD ["/bin/bash" , "-c" , "/etc/nginx/fix-nginx-conf.sh && nginx"]