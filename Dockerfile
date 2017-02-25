FROM debian:jessie
MAINTAINER Richard Challis/LepBase contact@lepbase.org

RUN apt-get update && apt-get install -y \
    lighttpd

COPY lighttpd.conf /etc/lighttpd/

COPY startup.sh /

EXPOSE 8080

WORKDIR /var/www/

CMD /startup.sh
