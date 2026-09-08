## INSTALLATION GUIDE 
Small installation guide to those brand new, and how I will personally be setting this rice up on my own computer. 

Create a new vm, min 4gb ram, 8gb recommended.

From arch tty1, enter archinstall. 

Locales: Set keyboard layout to whatever suits

Mirrors: Set region to closest. 

Disk Config: Partitioning > Use a best-effort default partition layout > Select disk > ext4

Hostname: whatever you would like

Authentication: User Account > add a user > add password > should account be superuser (yes) > confirm and exit

Network: Use Network manager (default-backend)

Timezone: find local timezone

Automatic time sync: ensure NTP is enabled

Install. 


### GIT 
sudo pacman -S git

git clone https://github.com/WilliamNolan05/DeadOrbit.git

cd DeadOrbit 

chmod + x install.sh 

./install.sh 

reboot 

