FROM rabbitmq:3.7.7

# Get the delayed-message-exchange plugin for rabbitmq
WORKDIR /usr/lib/rabbitmq/plugins

RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y unzip wget \
    && wget https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip -O temp.zip \
    && unzip temp.zip \
    && rm temp.zip \
    && rabbitmq-plugins --offline enable rabbitmq_delayed_message_exchange