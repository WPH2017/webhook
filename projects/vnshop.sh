#!/bin/bash
 
WEB_PATH='/home/wwwroot/git.wphkj.cn/vnshop'
WEB_PATH_CLIENT='/home/wwwroot/git.wphkj.cn/vnshop/client'
WEB_USER='www'
WEB_USERGROUP='www'
 
echo "Start deployment wphkj.cn"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
cd $WEB_PATH_CLIENT
npm run build
#chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH_CLIENT
echo "Finished."
