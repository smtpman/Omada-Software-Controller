#!/bin/bash
# details of this script were derived from this post https://community.tp-link.com/en/business/forum/topic/578320
# It is recommended to update repository and upgrade system before installing dependencies and omada software controller:
sudo apt update && sudo apt upgrade -y

# Install libssl1.1 which is dependency for MongoDB 4.4
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo apt install -y ./libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb

# Install MongoDB
sudo apt install -y software-properties-common
wget -qO- https://www.mongodb.org/static/pgp/server-4.4.asc | sudo tee /etc/apt/trusted.gpg.d/mongodb-org-4.4.asc
sudo add-apt-repository -y "deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse"
sudo apt install -y mongodb-org

# Install omada dependencies available over the repo (Java8, jsvc and curl)
sudo apt install -y openjdk-11-jre-headless jsvc curl

# Download and install Omada Controller Software
wget https://static.tp-link.com/upload/software/2023/202303/20230321/Omada_SDN_Controller_v5.9.31_Linux_x64.deb
sudo apt install -y ./Omada_SDN_Controller_v5.9.31_Linux_x64.deb
