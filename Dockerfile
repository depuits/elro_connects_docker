FROM python:3.9

WORKDIR /usr/src

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/dib0/elro_connects.git app

WORKDIR /usr/src/app

RUN pip install .

ARG BASE_TOPIC=
ENV BASE_TOPIC=$BASE_TOPIC

ENV ELRO_ID=
ENV ELRO_OPTIONS=

CMD elro -k "$HOSTNAME" -m "$MQTT_BROKER" -i "$ELRO_ID" -b "$BASE_TOPIC" $ELRO_OPTIONS
