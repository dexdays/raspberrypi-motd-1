#one line update
echo "Downloading the file..."
git clone -q https://github.com/marshallmyth/raspberrypi-motd
cd raspberrypi-motd
echo "Owning motd.sh file..."
sudo chown root:root motd.sh
sudo chmod +x motd.sh
echo "Copying the file into /etc/motd..."
sudo cp motd.sh /etc/motd/motd.sh
echo "Cleaning and relinking motd.sh in /etc/.profile..."
tmp="/etc/motd/motd.sh"
pattern="/etc/motd/motd.sh"
sed -i "s@$pattern@$tmp@" /home/pi/.profile
echo "Restarting SSH service..."
sudo systemctl restart ssh
echo "Cleaning up..."
cd ..
rm -rf raspberrypi-motd
echo " "
echo "Done!"
