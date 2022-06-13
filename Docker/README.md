## install Docker on Windows
~~~sh

~~~


## Download Docker on MAC


## install Docker on Linux
~~~sh
docker
sudo apt install -y docker.io
docker --version
sudo systemctl status docker
sudo systemctl enable --now docker
sudo systemctl status docker
sudo apt install -y docker-compose

sudo groupadd docker
# sudo usermod -aG docker arpan 
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
~~~


## fix docker: Got permission denied while trying to connect to the Docker daemon socket
```sh
sudo chmod 666 /var/run/docker.sock
sudo apt-get install jq -y
```

## Docker show IP of the container
~~~sh
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id
~~~

## Remove Docker
```sh
sudo apt-get remove docker docker-engine docker.io containerd runc
```
