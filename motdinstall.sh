#one line installation
git clone -q https://github.com/marshallmyth/raspberrypi-motd && cd raspberrypi-motd && sudo chown root:root motd.sh && sudo chmod +x motd.sh && sudo cp motd.sh /etc/profile.d/ && sudo rm /etc/motd ; sudo sed -i "s/#PrintLastLog .*/PrintLastLog no/1" /etc/ssh/sshd_config && sudo systemctl restart ssh && cd .. && rm -rf raspberrypi-motd && echo " " && echo "Done!"
