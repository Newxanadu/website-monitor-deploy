#!/bin/bash
# uninstall.sh - 完全卸载简洁现代网站

set -e

if [ "$(id -u)" -eq 0 ]; then
    echo "❌ 请勿用 root 运行！请用原部署用户（如 newxanadu）运行。"
    exit 1
fi

PROJECT_DIR="$HOME/website"

echo "🧹 正在卸载网站..."

# 移除 Nginx 配置
sudo rm -f /etc/nginx/sites-available/website
sudo rm -f /etc/nginx/sites-enabled/website
sudo nginx -t && sudo systemctl reload nginx 2>/dev/null || true

# 删除项目文件
rm -rf "$PROJECT_DIR"

# （可选）恢复家目录权限（谨慎操作）
# chmod o-x "$HOME"

echo "✅ 卸载完成！所有文件和配置已清理。"
