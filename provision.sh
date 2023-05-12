#!/bin/bash
# Update packages
sudo apt-get update -y
sudo apt-get upgrade -y
# Install Nginx
sudo apt-get install nginx -y
sudo systemctl start nginx 
# Install Ruby and Bundler
sudo apt-get install ruby-full -y
sudo gem install bundler
# Install Python properties 
sudo apt-get install python-software-properties -y
# Install Node.js v14.x
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
# Install pm2 globally
sudo npm install -g pm2
# Navigate to the directory containing the app
cd /home/vagrant/app 
# Install dependencies from the gemfile
bundle
# Install dependencies from package.json
npm install
# Start the app
node app.js