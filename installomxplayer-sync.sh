#!/usr/bin/sh

# Some dependencies
sudo apt-get install fonts-freefont-ttf libssh-4 python3-dbus

# Use newest version of omxplayer in the repo, should work
sudo apt install omxplayer

# Get omxplayer-sync into /bin and make it executable
sudo wget -O /usr/bin/omxplayer-sync https://github.com/turingmachine/omxplayer-sync/raw/master/omxplayer-sync
sudo chmod 0755 /usr/bin/omxplayer-sync

# Download twitch video for sync testing
wget http://twitch-event-engineering-public.s3.amazonaws.com/sync-footage/Sync-Footage-V1-H264.mp4

# Assuming we are in a subfolder of ~ (for example if we cloned the repo) we rename the video and move it up to ~
mv Sync-Footage-V1-H264.mp4 ../video.mp4
