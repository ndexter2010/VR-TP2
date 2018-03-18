# VR-TP2

Criação de um Dockerfile para a geração automática de uma Docker image com o seguinte software:

- Mininet
- tcpdump
- Wireshark

# Uso de mininet e tcpdump

$ docker-compose run --rm mininet


# Uso do Wireshark com Gui

$ docker run -ti --net=host --privileged -v $HOME:/root:ro -e XAUTHORITY=/root/.Xauthority -e DISPLAY=$DISPLAY ndexter/vr-tp2
