#!/bin/sh


# Mise à jour du serveur
sudo apt-get upgrade && sudo ap-get update

# Installez des packages pour permettre à apt d'utiliser un référentiel via HTTPS
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Ajoutez la clé GPG officielle de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Vérification de la clé GPG
sudo apt-key fingerprint 0EBFCD88

# Utilisez la commande suivante pour configurer la version stable
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Mise à jour de la liste des sources pour les paquets 
sudo apt-get update

# Installation de docker
sudo apt-get install docker-ce 

# Vérification de Docker 
sudo docker run hello-world
