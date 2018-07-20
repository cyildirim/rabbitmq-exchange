FROM rabbitmq:3.7-management

RUN apt-get update

RUN apt-get install -y wget
RUN apt-get install -y unzip

RUN cd /plugins &&  wget https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip && unzip rabbitmq_delayed_message_exchange-20171201-3.7.x.zip


RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

