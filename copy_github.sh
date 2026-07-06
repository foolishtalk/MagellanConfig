#!/bin/sh
cp ./magellan_update.xml ./github_update.xml
sed -i '' 's#https://www.foolishtalk.org/magellan/config/magellan.dmg#https://raw.githubusercontent.com/foolishtalk/MagellanConfig/refs/heads/master/magellan.dmg#g' ./github_update.xml
