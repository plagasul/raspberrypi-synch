#!/usr/bin/sh
#sudo apt-get remove omxplayer
#rm -rf /usr/bin/omxplayer /usr/bin/omxplayer.bin /usr/lib/omxplayer
sudo apt-get install fonts-freefont-ttf libssh-4 python3-dbus
#wget https://github.com/magdesign/PocketVJ-CP-v3/raw/master/sync/omxplayer_0.3.7-git20170130-62fb580_armhf.deb
#sudo dpkg -i omxplayer_0.3.7~git20170130~62fb580_armhf.deb
sudo apt install omxplayer
sudo wget -O /usr/bin/omxplayer-sync https://github.com/turingmachine/omxplayer-sync/raw/master/omxplayer-sync
sudo chmod 0755 /usr/bin/omxplayer-sync

# Download twitch video for sync testing
wget http://twitch-event-engineering-public.s3.amazonaws.com/sync-footage/Sync-Footage-V1-H264.mp4

# I guess we need to rename it to video.mp4 so it works straightaway with line 39 of rc.local
mv Sync-Footage-V1-H264.mp4 video.mp4
