RaspberryPi MOTD - Fork
====

   **This is a fork of a motd script. This version removes the frame around the motd and fixes a bad visualization for Italian language**
   
   → **All credit to [Gagle](https://github.com/gagle/raspberrypi-motd)**

## Before
<p align="center">
  <img src="https://github.com/gagle/raspberrypi-motd/blob/master/motd.png?raw=true"/>
</p>

## After
<p align="center">
  <img src="https://github.com/marshallmyth/raspberrypimotd/blob/master/motd-noframe.png?raw=true"/>
</p>

# Message of the Day Raspberry Pi

- Written in pure Bash. 
- No need to install any package. 
- Tested with the Arch Linux ARM and Raspbian distributions.

# Installation
Download and save the `motd.sh` bash script in the Raspberry Pi. 
```bash
$ git clone https://github.com/marshallmyth/raspberrypimotd-Fork/blob/master/motd.sh
```

Remember to add execution permissions and change the owner:

```bash
$ sudo chown root:root motd.sh
$ sudo chmod +x motd.sh
```
---

***The following steps may vary depending on the OS. Arch Linux ARM is assumed.***

*Autoexecute the script when the user logs in. There are multiple locations from where you can start the `motd.sh` script, for example using the `/etc/profile`.*

Save the `motd.sh` script in the directory `/etc/profile.d` and it will be executed after the login. 
```bash
  $ sudo cp raspberrypimotd/motd.sh /etc/profile.d/
  ```
*More about [autostarting scripts](https://wiki.archlinux.org/index.php/Bash#Configuration_file_sourcing_order_at_startup).*

---

 Remove the default MOTD. It is located in `/etc/motd`.
  
  ```bash
  $ sudo rm /etc/motd
  ```
  
  ---
Remove the "last login" information and disable the `PrintLastLog` option from the `sshd` service. 
Edit the `/etc/ssh/sshd_config` file and uncomment the line `#PrintLastLog yes`:
  
  ```bash
  $ sudo nano /etc/ssh/sshd_config
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
  $ sudo systemctl restart sshd
  ```
---
**Note**: If you don't see the degree Celsius character correctly (`º`) make sure you have enabled a UTF8 locale ([Arch Linux locales](https://wiki.archlinux.org/index.php/locale)).
