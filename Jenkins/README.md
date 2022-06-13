# install Jenkins on Windows
~~~sh
# Download the Generic Java package (.war)
java -jar jenkins.war

# Run jenkins on custom Port
java -jar jenkins.war --httpsPort=9090

java -DJENKINS_HOME=/Users/Heros/jenkins -jar jenkins.war  --httpPort=8484
~~~


# Download Jenkins on MAC


# install Jenkins on Linux
~~~sh
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
~~~

# Add jenkins to root group and
~~~sh
sudo gpasswd -a jenkins root
sudo service docker restart
~~~



# Un-install Jenkins
~~~sh
sudo apt-get purge jenkins
sudo apt-get purge --auto-remove jenkins
~~~