echo update system
sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

echo fix lightdm login 
sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

echo install browsers
var_chrome=$(which google-chrome)
echo "$var_chrome";

if [ `getconf LONG_BIT` = "64" ]

then
        echo "I'm 64-bit"
        echo chrome

        if [ "$var_chrome" = "/usr/bin/google-chrome" ]
                then
                echo "google-chrome installed already"
        else
                echo "google-chrome not installed - install it..."
                wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
                sudo gdebi google-chrome-stable_current_amd64.deb
                rm google-chrome-stable_current_amd64.deb
fi

else
    echo "I'm 32-bit so I cannot install google-chrome"
fi

sudo apt-get install chromium-browser

echo install build tools for student coding
sudo apt-get -y install build-essential 
sudo apt-get -y install ssh

echo add new users
sudo newusers ../add_student_scripts/add_dobbins.txt

echo cluster ssh
sudo apt-get -y install clusterssh

echo complete you can now reboot and login 
