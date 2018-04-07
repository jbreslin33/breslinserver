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
                wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
                sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
                sudo apt-get -y update
                sudo apt-get -y install google-chrome-stable
        fi
else
    echo "I'm 32-bit so I cannot install google-chrome"
fi

