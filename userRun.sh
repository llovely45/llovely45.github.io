#!/bin/bash

echo "===== Script Start ====="

# 快速添加登录 GitHub 秘钥
alias github='eval "$(/usr/bin/ssh-agent -s)"; /usr/bin/ssh-add ~/.ssh/id_rsa'
# 重启 PM2 服务器
alias repm2='pm2 restart /hexo_run.js'

# Debian 中国区镜像加速
if [ -f /etc/apt/sources.list ]; then
    if grep -q "deb.debian.org" /etc/apt/sources.list; then
        sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
        echo "Debian sources updated to USTC mirror."
    fi
else
    echo "Warning: /etc/apt/sources.list not found, skipping mirror update."
fi

# NPM 配置
CACHE_DIR="/app/.cache/npm"
mkdir -p "$CACHE_DIR"
npm config set cache "$CACHE_DIR"
npm config set registry https://registry.npmjs.org/
echo "NPM configured."

# 持久化历史记录
rm -f ~/.bash_history
ln -sf /app/.bash_history ~/.bash_history

# SSH 配置
if [ -f /app/.ssh/id_rsa ]; then
    chmod 600 /app/.ssh/id_rsa
else
    echo "Warning: Private key not found."
fi

if [ -f /app/.ssh/id_rsa.pub ]; then
    chmod 644 /app/.ssh/id_rsa.pub
else
    echo "Warning: Public key not found."
fi

if [ -d /app/.ssh ]; then
    chmod 700 /app/.ssh
else
    echo "Warning: /app/.ssh directory not found."
fi

rm -rf ~/.ssh
ln -sf /app/.ssh ~/.ssh
echo "SSH configured."

echo "===== Script End ====="

