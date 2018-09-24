echo ----------------------update-------------------------
sudo apt-get -y update        # Fetches the list of available updates

echo ----------------------upgrade-------------------------
sudo apt-get -y upgrade       # Strictly upgrades the current packages

echo ----------------------dist upgrade-------------------------
sudo apt-get -y dist-upgrade  # Installs updates (new ones)

sudo apt-get -y install -y build-essential

sudo npm install -g @angular/cli
