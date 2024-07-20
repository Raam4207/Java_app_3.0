#!/bin/bash

# Install unzip if not already installed
if ! command -v unzip &> /dev/null; then
    sudo apt update
    sudo apt install unzip -y
fi

# Download and install SonarQube Scanner
wget -O sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonar-scanner.zip -d /opt
mv /opt/sonar-scanner-4.6.2.2472-linux /opt/sonar-scanner

# Update PATH
echo 'export PATH=$PATH:/opt/sonar-scanner/bin' >> ~/.bashrc
source ~/.bashrc

# Verify installation
sonar-scanner --version
