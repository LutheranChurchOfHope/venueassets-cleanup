#!/bin/bash


function doCleanup() {

  # remove all standalone files - doesn't remove folders
  rm ./*

  # remove everything (that's left) that doesn't follow the proper dating/naming format
  #  rm -r `ls -1tr ./ | grep -v -e ^[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]_ | sed s/$/\'/g | sed s/^/\'/g`
  find ./ ! -regex '^\.\/\|^\.\/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]_.*' -exec rm -r {} \+

}


# move into working directory - Bridge
cd /Users/production/ownCloud/Venues/Bridge/
doCleanup

# move into working directory - Chapel
cd /Users/production/ownCloud/Venues/Chapel/
doCleanup

# move into working directory - Gym
cd /Users/production/ownCloud/Venues/Gym/
doCleanup

# move into working directory - Network-Nodes
cd /Users/production/ownCloud/Venues/Network-Nodes/
doCleanup

# move into working directory - Room 101A
cd /Users/production/ownCloud/Venues/Room_101A/
doCleanup

# move into working directory - Room 101B
cd /Users/production/ownCloud/Venues/Room_101B/
doCleanup

# move into working directory - Room 101C
cd /Users/production/ownCloud/Venues/Room_101C/
doCleanup

# move into working directory - Room 102
cd /Users/production/ownCloud/Venues/Room_102/
doCleanup

# move into working directory - Room 104
cd /Users/production/ownCloud/Venues/Room_104/
doCleanup

# move into working directory - Room 128
cd /Users/production/ownCloud/Venues/Room_128/
doCleanup

# move into working directory - Room 130/Well
cd /Users/production/ownCloud/Venues/Room_130-TheWell/
doCleanup

# move into working directory - Room 212
cd /Users/production/ownCloud/Venues/Room_212/
doCleanup

# move into working directory - Room 214
cd /Users/production/ownCloud/Venues/Room_214/
doCleanup

# move into working directory - Room 216
cd /Users/production/ownCloud/Venues/Room_216/
doCleanup

# move into working directory - Room RR1
cd /Users/production/ownCloud/Venues/Room_RR1/
doCleanup

# move into working directory - Room Rehearsal Room 1
cd /Users/production/ownCloud/Venues/Rehearsal-Room_1/
doCleanup

# move into working directory - Worship Center
cd /Users/production/ownCloud/Venues/Worship-Center/
doCleanup


echo -e "last ran " `date +%F_%T` "\n" >> /scripts/logs/main-log.txt
