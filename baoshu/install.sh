#!/usr/bin/env bash
set -e

mkdir -p /opt/baoshu
cd /opt/baoshu

curl -fsSL https://你的域名/baoshu.sh -o baoshu.sh
curl -fsSL https://你的域名/core.tar.gz | tar xz
curl -fsSL https://你的域名/protocol.tar.gz | tar xz

chmod +x *.sh core/*.sh protocol/*.sh

ln -sf /opt/baoshu/baoshu.sh /usr/bin/宝书
ln -sf /opt/baoshu/baoshu.sh /usr/bin/baoshu

echo "安装完成，输入：宝书"
