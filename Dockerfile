FROM ubuntu:16.04
	LABEL maintainer="mihabeloz@gmail.com"
	RUN apt update && apt install -y gcc nano
	WORKDIR /root/hw-map-5.1/
	COPY hello_world.c .
	RUN gcc hello_world.c -o hello_world
	CMD ["./hello_world"]
