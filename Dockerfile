FROM python:3

WORKDIR /usr/src

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/dib0/elro_connects.git app

WORKDIR /usr/src/app

RUN pip install .

ARG BASE_TOPIC=
ENV BASE_TOPIC=$BASE_TOPIC

CMD elro -k "$HOSTNAME" -i "$ID" -m "$MQTT_BROKER" -b "$BASE_TOPIC"
