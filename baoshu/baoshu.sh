#!/usr/bin/env bash
set -e
export LANG=zh_CN.UTF-8

clear
echo "======================================"
echo "   宝书 VPS 节点管理脚本 v1.0"
echo "======================================"
echo "1. 安装 VMess TCP"
echo "2. 安装 VMess WS"
echo "3. 安装 VLESS TCP"
echo "4. 安装 VLESS WS"
echo "5. 查看节点状态"
echo "6. 卸载节点"
echo "0. 退出"
echo

read -p "请输入选项: " num

case "$num" in
  1) bash protocol/vmess_tcp.sh ;;
  2) bash protocol/vmess_ws.sh ;;
  3) bash protocol/vless_tcp.sh ;;
  4) bash protocol/vless_ws.sh ;;
  5) systemctl status xray --no-pager ;;
  6) bash core/uninstall.sh ;;
  0) exit 0 ;;
  *) echo "无效输入" ;;
esac
