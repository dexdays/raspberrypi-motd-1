#one line installation
echo "Downloading the file..." && git clone -q https://github.com/marshallmyth/raspberrypi-motd && cd raspberrypi-motd && echo "Owning motd.sh file..." && sudo chown root:root motd.sh && sudo chmod +x motd.sh ; echo "Copying motd.sh into /ect/motd..." && sudo cp motd.sh /etc/motd/ && echo "Linking motd.sh in /etc/.profile..." && sudo echo "/etc/motd.sh" >> /home/pi/.profile && echo "Disabling Last Login Info..." && sudo sed -i "s/#PrintLastLog .*/PrintLastLog no/1" /etc/ssh/sshd_config && echo "Restarting SSH service..." && sudo systemctl restart ssh && echo "Cleaning up..." && cd .. && rm -rf raspberrypi-motd && echo " " && echo "Done!"
