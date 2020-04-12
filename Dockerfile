FROM limina/nginx-ldap:1.16.1

ADD run.sh /run.sh
ADD default.conf /etc/nginx/conf.d/default.conf

RUN chmod +x /run.sh

CMD ["/run.sh"]

EXPOSE 80
