#one line update
echo "Downloading the file..." && git clone -q https://github.com/marshallmyth/raspberrypi-motd && cd raspberrypi-motd && echo "Copying the file into /etc/profile.d/..." && sudo cp motd.sh /etc/profile.d/ && echo "Restarting SSH service..." && sudo systemctl restart ssh && echo "Cleaning up..." && cd .. && sudo rm -rf raspberrypi-motd && echo " " && echo "Done!"
