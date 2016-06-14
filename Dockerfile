FROM luismesalas/storm:0.9.6
MAINTAINER luismesalas

RUN /usr/bin/config-supervisord.sh nimbus 
RUN /usr/bin/config-supervisord.sh drpc
RUN /usr/bin/config-supervisord.sh ui

EXPOSE 6627
EXPOSE 3772
EXPOSE 3773
EXPOSE 8080

ADD start-supervisor.sh /usr/bin/start-supervisor.sh
RUN chmod +x /usr/bin/start-supervisor.sh 

CMD /usr/bin/start-supervisor.sh
