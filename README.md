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
```

### 2. 下载脚本

```bash
wget https://raw.githubusercontent.com/Newxanadu/website-monitor-deploy/main/install.sh
wget https://raw.githubusercontent.com/Newxanadu/website-monitor-deploy/main/uninstall.sh
```

### 3. 赋予执行权限

```bash
chmod +x install.sh uninstall.sh
```

### 4. 安装网站

```bash
./install.sh
```
脚本会提示输入一次 sudo 密码（用于配置 Nginx）

### 5. 访问网站

打开浏览器，访问：
```
http://你的服务器IP
```

### 6. 卸载（可选）

```bash
./uninstall.sh
```

---

## ⚠️ 注意事项

- ❌ 不要用 root 用户运行脚本
- 🔒 确保服务器 80 端口已开放（云服务器需在安全组中放行）
- 🌐 网页内容为静态 HTML，如需动态功能请自行扩展

---

✅ 此 README.md 文件可直接用于你的 GitHub 仓库。
