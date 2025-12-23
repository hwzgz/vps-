#!/usr/bin/env bash

read -p "请输入监听端口: " PORT
read -p "请输入 UUID（回车自动生成）: " UUID

if [ -z "$UUID" ]; then
  UUID=$(cat /proc/sys/kernel/random/uuid)
fi

cat > /opt/baoshu/config/xray.json <<EOF
{
  "inbounds": [{
    "port": $PORT,
    "protocol": "vmess",
    "settings": {
      "clients": [{
        "id": "$UUID",
        "alterId": 0
      }]
    }
  }],
  "outbounds": [{
    "protocol": "freedom"
  }]
}
EOF

systemctl restart xray

echo
echo "已安装"
echo "协议：VMess TCP"
echo "端口：$PORT"
echo "UUID：$UUID"
