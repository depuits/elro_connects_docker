# elro_connects_docker

Docker image for [elro_connects](https://github.com/dib0/elro_connects/).

Build and run dockerfile:

	sudo docker build -t elro-connects .

	sudo docker run -it --rm \
		-e HOSTNAME='host or ip' \
		-e MQTT_BROKER='{mqtt,ws}[s]://[username][:password]@host.domain[:port]' \
		-e ELRO_OPTIONS='-i ST_xxxxxxxxxxxx -a' \
		elro-connects

The `BASE_TOPIC` is optional and defaults to none.

For the usage of the different arguments you can check out the [elro_connects documentation](https://github.com/dib0/elro_connects#usage).

Following argument should be provided through the docker environmental variables:
- `HOSTNAME`
- `MQTT_BROKER`
- `BASE_TOPIC`

All other argument can be passed using `ELRO_OPTIONS` variable.
