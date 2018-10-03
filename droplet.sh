#!/usr/bin/env bash
echo "Hello there, I am your personal assistant 58449. I will help you create your vertual slave: "
read -p "So tell me, what kind of virtual slave do you wish to install?: " slave
  echo "Thats great, I will need few information from you"
read -p "Please enter your token: " token
read -p "Enter digitalocean image: " image
read -p "Please enter a droplet name: " name
   echo "Now creating $slave as you commanded!"
docker-machine create --driver digitalocean --digitalocean-access-token $token --digitalocean-image "$image" $name
