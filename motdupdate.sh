#one line update
git clone -q https://github.com/marshallmyth/raspberrypi-motd && cd raspberrypi-motd && sudo cp motd.sh /etc/profile.d/ && sudo systemctl restart ssh && cd .. && sudo rm -rf raspberrypi-motd && echo " " && echo "Done!"
