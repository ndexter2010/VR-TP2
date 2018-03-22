# VR-TP2

Criação de um Dockerfile para a geração automática de uma Docker image com o seguinte software:

- Mininet
- tcpdump
- Wireshark



## Uso do Mininet e Tcpdump

```bash
$ docker-compose up -d
```




## Uso do Wireshark com Gui

```bash
$ docker run -ti --net=host --privileged -v $HOME:/root:ro -e XAUTHORITY=/root/.Xauthority -e DISPLAY=$DISPLAY ndexter/vr-tp2
```
