FROM nginx

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh

EXPOSE 80

VOLUME ["/hypervisor_etc"]

CMD ["/bin/bash" , "-c" , "/etc/nginx/fix-nginx-conf.sh \"${CC_BACKEND_SERVERS}\" && nginx"]