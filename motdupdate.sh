#one line update
git clone -q https://github.com/marshallmyth/raspberrypimotd && cd raspberrypimotd && sudo cp motd.sh /etc/profile.d/ && sudo systemctl restart ssh && cd .. && sudo rm -rf raspberrypimotd && echo " " && echo "Done!"
