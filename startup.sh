#!/bin/bash

if [ -s /conf/lighttpd.conf ]; then
  cp /conf/lighttpd.conf /etc/lighttpd/
fi

service lighttpd restart

tail -f /dev/null
