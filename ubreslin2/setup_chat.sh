#change to sandbox
cd /home/$1/sandbox
git clone https://github.com/guille/chat-example.git
sudo apt-get -y install nodejs
sudo apt-get -y install npm
npm install --save express
npm install socket.io
nodejs index.js 
