# Website Monitor Deploy

一键部署基于 Nginx 的 **简洁现代网站**，适用于展示、监控面板或静态主页。

> 💡 本项目包含完整的 HTML/CSS 响应式页面，支持中文 UTF-8，无乱码。

---

## ✨ 特性

- 使用你提供的官方设计 HTML 模板
- 自动配置 Nginx（监听 80 端口）
- 强制设置 `charset utf-8`，彻底解决中文乱码
- 一键安装 / 一键卸载
- 无需 root 权限（仅 Nginx 配置需临时 sudo）

---

## 📦 文件说明

| 文件 | 作用 |
|------|------|
| `install.sh` | 部署脚本（自动创建网页 + 配置 Nginx） |
| `uninstall.sh` | 清理脚本（移除配置 + 删除文件） |
| `www/index.html` | 网站主页面（响应式设计） |

---

## ▶️ 使用方法

### 1. 切换到目标用户（例如 `newxanadu`）

```bash
su - newxanadu
