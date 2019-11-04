RaspberryPi MOTD - Fork
====

   **This is a fork of a motd script**                          
   → **All credit to [Gagle](https://github.com/gagle/raspberrypi-motd)**
   
 ---
#### Whats New?

 - Removed frame around the motd (I didn't like it)
 - Fixed Italian Language Error that was showing Days and Months lowercase
 - Fixed Installation Tutorial (the previously one broke the system)
- 🔥 Added One Line Command for Installation and Update

## Before - Old Version
<p align="center">
  <img src="https://github.com/gagle/raspberrypi-motd/blob/master/motd.png?raw=true"/>
</p>

## After - New Version
<p align="center">
  <img src="https://github.com/marshallmyth/raspberrypi-motd/blob/master/motd-noframe.png?raw=true"/>
</p>

# Message of the Day Raspberry Pi

- Written in pure Bash. 
- No need to install any package. 
- Tested with the Arch Linux ARM and Raspbian distributions.

# Installation
**One line installation! Do this at your own risk. Read all before doing this**                     
```bash
bash <(curl -Ss https://raw.githubusercontent.com/marshallmyth/raspberrypi-motd/master/motdinstall.sh)
```
# Update
**One line update!**
```bash
bash <(curl -Ss https://raw.githubusercontent.com/marshallmyth/raspberrypi-motd/master/motdupdate.sh)
```
## Manual Installation
***The following steps may vary depending on the OS. Arch Linux ARM is assumed.***

---

**Download and save the `motd.sh` bash script in the Raspberry Pi.** 
```bash
git clone https://github.com/marshallmyth/raspberrypi-motd
cd raspberrypi-motd
```

**Add execution permissions and change the owner**

```bash
sudo chown root:root motd.sh
sudo chmod +x motd.sh
```
---
 **Remove the default MOTD**            
 It is located in `/etc/motd`.
  ```bash
sudo rm /etc/motd
  ```
  
  ---
**Autoexecute the script when the user logs in**              
There are multiple locations from where you can start the `motd.sh` script. In this tutorial we are linking it in `/home/pi/.profile`

Save the `motd.sh` script in the directory `/etc/motd`
```bash
sudo cp raspberrypi-motd/motd.sh /etc/motd/motd.sh
  ```
and link `/etc/motd/motd.sh` at the end of `/home/pi/.profile`, so it will be executed after login.      
To automatically link use this command:
```bash
sudo echo "/etc/motd/motd.sh" >> /home/pi/.profile
  ```
otherwise add it manually at the end of the file.
```bash
sudo nano /home/pi/.profile
  ```
*More about [autostarting scripts](https://wiki.archlinux.org/index.php/Bash#Configuration_file_sourcing_order_at_startup).*

  ---
**Remove the "last login" information and disable the `PrintLastLog` option from the `sshd` service.** 

To automatically remove and disable PrintLastLog use this command:
```bash
sudo sed -i "s/#PrintLastLog .*/PrintLastLog no/1" /etc/ssh/sshd_config
  ```
Otherwise edit the `/etc/ssh/sshd_config` file and uncomment the line `#PrintLastLog yes`:
  
  ```bash
sudo nano /etc/ssh/sshd_config
  ```
  
  Before:
  
  ```text
  #PrintLastLog yes
  ```
  
  After:
  
  ```text
  PrintLastLog no
  ```
  
  ---
  Restart the `sshd` service:
  
  ```bash
sudo systemctl restart sshd
  ```
---
**Note**: If you don't see the degree Celsius character correctly (`º`) make sure you have enabled a UTF8 locale ([Arch Linux locales](https://wiki.archlinux.org/index.php/locale)).
