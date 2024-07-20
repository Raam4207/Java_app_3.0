# Download the SonarQube Scanner
wget -O sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip

# Unzip the package
unzip sonar-scanner.zip -d /opt

# Rename the directory for easier access
mv /opt/sonar-scanner-4.6.2.2472-linux /opt/sonar-scanner

# Add sonar-scanner to the PATH
echo 'export PATH=$PATH:/opt/sonar-scanner/bin' >> ~/.bashrc
source ~/.bashrc
