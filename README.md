# Jenkins deployment

#Installing Jenkins in ubuntu VM
sudo apt-get update
sudo apt update
sudo apt upgrade
sudo apt-get install default-jdk
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

#Browse to http://<VM's external IP address>:8080
#Follow the onscreen commands to setup Jenkins
#need to assign compute instance admin v1 role to the service account assigned to jenkins vm to deploy the vm's
