https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose

## SetUp SSH Key to deploy from Pipeline:

```sh
## Step1: Generate SSH key using below command[The key should be generated using PEM format]
ssh-keygen -m PEM -t rsa -b 4096
or
ssh-keygen -m pem -p -f ~/.ssh/id_rsa 

## Step2: add the content of public key(<id_rsa.pub>) into "authorized_keys"
cat ~/.ssh/id_rsa.pub
nano ~/.ssh/authorized_key

## Step3: add the content of public key(<id_rsa.pub>) into "GitHub Secret"
Name: SSH_PRIVATE_KEY
Value: <id_rsa.pub>
```

A note from one of our readers: Depending on your version of SSH you might also have to do the following changes:
 * Put the public key in .ssh/authorized_keys2
 * Change the permissions of .ssh to 700
 * Change the permissions of .ssh/authorized_keys2 to 640

[https://github.com/easingthemes/ssh-deploy/issues/34]

[https://github.com/appleboy/ssh-action]

![alt text](https://user-images.githubusercontent.com/20253809/112135401-b1782480-8c08-11eb-9d51-2a76aa878798.png)




## SSH Tunneling:
```sh
 ssh -i C:\Users\Arpan\.ssh\main-access-key.pem -L  3307:localhost:3306 ubuntu@52.66.251.160
```

sudo bash ./script.sh


```sh
ssh -i C:\Users\Arpan\.ssh\main-access-key.pem ubuntu@43.204.25.132

scp -i C:\Users\Arpan\.ssh\main-access-key.pem E:\projects\Deployment\lamp.sh  ubuntu@43.204.25.132:/home/ubuntu
```



```sh
 scp -i C:\Users\Arpan\.ssh\main-access-key.pem E:\projects\git\pureeats-laravel-2022\terraform\script.sh ubuntu@13.233.108.205:/home/ubuntu

 ssh -o StrictHostKeyChecking=no -i C:\Users\Arpan\.ssh\main-access-key.pem ubuntu@65.0.12.2 echo "hello" 
ssh -i C:\Users\Arpan\.ssh\main-access-key.pem ubuntu@3.111.196.215
curl --version
jq --version
```

```sh
# Add a group docker if it does not exist, and add jenkins user to the docker group, e.g. 
sudo groupadd docker && usermode -aG docker 'jenkins'

Adjust permissions on the docker.sock file so that jenkins user can access it, e.g.
chmod 777 /var/run/docker.sock
```

```sh
# Add the docker group if it doesn't already exist:
sudo groupadd docker
# Add the user "jenkins" to the docker group:
sudo gpasswd -a jenkins docker

# Add jenkins to root group and
sudo gpasswd -a jenkins root
sudo service docker restart
```


## Step1: Setup ubuntu server 
```sh
apt-get update && apt-get install -y \
# open-vm-tools \
# open-vm-tools-desktop \
zip \
unzip \
vim \
nano \
git \
curl \
jq \
# openjdk-8-jdk \
docker.io \
docker-compose \
# phpunit \
openssh-server
```

```sh
service ssh start
sudo systemctl status ssh
```

## Install Docker
```sh
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
```

## Docker show IP of the container
```sh
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id
```


## Remove Docker
```sh
sudo apt-get remove docker docker-engine docker.io containerd runc
```

## Step3: install Jenkins
```sh
sudo apt update 
sudo apt install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add  
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 
sudo apt update 
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw status
sudo ufw enable
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

usermod -aG docker jenkins
chmod 666 /var/run/docker.sock
```


## Un-install Jenkins
```sh
sudo apt-get purge jenkins
sudo apt-get purge --auto-remove jenkins
```

## fix docker: Got permission denied while trying to connect to the Docker daemon socket

```sh
sudo chmod 666 /var/run/docker.sock
sudo apt-get install jq -y
```




## fix application directory permissions: 
```sh
docker exec -it app bash

chmod -R 775 storage/framework
chmod -R 775 /var/www/storage
chmod -R 777 /var/www/storage
chmod -R 775 storage/logs
chmod -R 775 bootstrap/cache/

chmod -R ug+rwx storage bootstrap/cache


sudo chown -R $USER:www-data storage
sudo chown -R $USER:www-data bootstrap/cache
```

## Apache file permission for /var/www
```sh
# You can make Apache (www-data), the owner of the folder:
sudo chown -R www-data:www-data /var/www
# that should make file_put_contents work now. But for more security you better also set the permissions like below:
find /var/www -type d -print0 | xargs -0 chmod 0755 # folder
find /var/www -type f -print0 | xargs -0 chmod 0644 # files
change /var/www to the root folder of your php files
```

## Docker commands
```sh
docker-compose up -d
docker-compose build && docker-compose up -d
docker build -t my-image ./
```

## Create new container from the ubuntu image, if the ubuntu image is not present in docker then it will pull from DsockerHub 
```sh
docker run -it --name foodomaContainer ubuntu /bin/bash
exit
docker ps
ocker start foodomaContainer
docker ps
docker attach foodomaContainer
touch /tmp/myfile
```

## Check difference & commit the image
```sh
docker diff foodomaContainer
docker commit foodomaContainer foodoma-image
docker images
```


## Create new container from the exiting image
```sh
docker images
docker ps -a
docker run -it --name foodomaContainerCopy foodoma-image
docker ps -a
docker rm foodomaContainerCopy 
docker ps -a
```

## Create new container from the exiting image
#### -q, --quiet[=false]      Only display container IDs
```sh
docker rm -f $(docker ps -a -q)
docker system prune -a
docker system prune -a --volumes -f
sudo chmod -R 777 /var/DirectoryName
docker exec -it 75jhfguffjjffgdr bash
```

## SSH Commands
```sh
ssh root@192.168.0.1
ssh -p 2222 root@192.168.0.1
ssh -i ~/.ssh/id_rsa root@192.168.0.1 # i=> input file
scp C:\Users\Arpan\Desktop\avatar.png  arpan@192.168.209.128:/home/arpan/Desktop/
```


## Git AccessKey
```sh
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
```


## rsync to sync files between remote directories
```sh
authorized_keys 
rsync -vrzhe ssh -o Strictkeychecking=no --exclude vendor/ . arpan@192.168.209.128:/home/arpan/Desktop/DemoTest --password-file=<(echo "password")
rsync -vrzhe ssh -o Strictkeychecking=no --exclude vendor/ . 172.18.0.4:/var/wwwxx


rsync -e  "ssh -i C:\Users\Arpan\.ssh\main-access-key.pem" -anv  C:\test ubuntu@43.204.220.53:/var/www/
```

```sh
cat {SQL FILE NAME} | docker exec -i {MYSQL CONTAINER NAME} {MYSQL PATH IN CONTAINER} --init-command="SET autocommit=0;"
```

```sh
docker exec -i mysql-container mysql -u arpan -p password pureeats_test < pureeats_test.sql
cat dump.sql | docker exec -i mysql-container mysql -uuser -ppassword db_name
cat temp.sql | docker exec -i mysql.master /bin/mysql --init-command="SET autocommit=0;"

# also you can use pv to moniter progress:
cat temp.sql | pv | docker exec -i mysql.master /bin/mysql --init-command="SET autocommit=0;"

```


cat dump.sql | docker exec -i db mysql -uarpan -ppassword --init-command="SET autocommit=0;"


# Teraaform Lifecycle
~~~sh
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
~~~
