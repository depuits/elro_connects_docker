# elro_connects_docker
Docker image for elro_connects

Build and run dockerfile:

	sudo docker build -t elro-connects .

	sudo docker run -it --rm \
		-e HOSTNAME='host or ip' \
		-e ID='ST_xxxxxxxxxxxx' \
		-e MQTT_BROKER='{mqtt,ws}[s]://[username][:password]@host.domain[:port]' \
		elro-connects

The `BASE_TOPIC` is optional and defaults to none.
