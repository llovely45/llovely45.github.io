#!/bin/bash

echo "add User CMD here!"

echo "=====User CMD Start!====="

# 重启内部pm2 服务器
alias repm2='pm2 restart /hexo_run.js'

#### debian 中国区加速
# 如果网络速度快，可以注释
sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

#### npm 配置
npm config ls -l

mkdir -p /app/.cache/npm
npm config set cache "/app/.cache/npm" 
# npm config set userconfig "/app/.npmrc"
# npm config set registry https://registry.npmmirror.com

npm config set registry https://registry.npmjs.org/

#### history 持久化
rm -rfv ~/.bash_history
ln -s /app/.bash_history ~/.bash_history

#### npm 插件安装
# 这里用户可以修改自定义安装
npm install --save \
    hexo-admin \
    hexo-include-markdown \
    hexo-douban-card-new \
    hexo-github-card \
    hexo-bilibili-card-new \
    hexo-feed 

echo "=====User CMD end!====="

