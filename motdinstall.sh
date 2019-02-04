#one line installation
git clone -q https://github.com/marshallmyth/raspberrypimotd && cd raspberrypimotd && sudo chown root:root motd.sh && sudo chmod +x motd.sh && sudo cp motd.sh /etc/profile.d/ && sudo rm /etc/motd ; sudo sed -i "s/#PrintLastLog .*/PrintLastLog no/1" /etc/ssh/sshd_config && sudo systemctl restart ssh && cd .. && rm -rf raspberrypimotd && echo " " && echo "Done!"
