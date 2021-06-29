#!/bin/sh
nvm --version
node -v
npm -v

echo '部署前端服务器...'
cd server
npm i
pm2 startOrReload
