#!/bin/bash
# install.sh - 一键部署简洁现代网站（含监控展示页）

set -e

echo "🚀 开始部署简洁现代网站..."

# 禁止 root 运行
if [ "$(id -u)" -eq 0 ]; then
    echo "❌ 错误：请不要用 root 用户运行此脚本！"
    echo "   请切换到普通用户（例如 newxanadu）后再执行。"
    exit 1
fi

USERNAME=$(whoami)
PROJECT_DIR="/home/$USERNAME/website"

echo "👤 当前用户: $USERNAME"
echo "📁 项目路径: $PROJECT_DIR"

# 创建目录
mkdir -p "$PROJECT_DIR/www"

# 写入 HTML（来自需求文档的完整代码）
cat > "$PROJECT_DIR/www/index.html" << 'EOF'
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>简洁现代网站</title>
<style>
:root {
--primary-color: #3498db;
--secondary-color: #2ecc71;
--dark-color: #2c3e50;
--light-color: #ecf0f1;
--transition: all 0.3s ease;
}

* {
margin: 0;
padding: 0;
box-sizing: border-box;
}

body {
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
line-height: 1.6;
color: #333;
background-color: var(--light-color);
}

a {
text-decoration: none;
color: var(--primary-color);
}

ul {
list-style: none;
}

.container {
max-width: 1200px;
margin: 0 auto;
padding: 0 20px;
}

/* 导航栏 */
.navbar {
background-color: #fff;
box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
position: sticky;
top: 0;
z-index: 100;
}

.navbar .container {
display: flex;
justify-content: space-between;
align-items: center;
padding: 20px;
}

.logo {
font-size: 1.5rem;
font-weight: bold;
color: var(--dark-color);
}

.logo span {
color: var(--primary-color);
}

.nav-menu {
display: flex;
}

.nav-menu li {
margin-left: 20px;
}

.nav-menu a {
padding: 8px 15px;
border-radius: 4px;
transition: var(--transition);
}

.nav-menu a:hover {
background-color: var(--primary-color);
color: #fff;
}

/* 英雄区域 */
.hero {
background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
color: white;
padding: 100px 0;
text-align: center;
}

.hero h1 {
font-size: 3rem;
margin-bottom: 20px;
}

.hero p {
font-size: 1.2rem;
max-width: 700px;
margin: 0 auto 30px;
}

.btn {
display: inline-block;
background: #fff;
color: var(--primary-color);
padding: 12px 30px;
border-radius: 30px;
font-weight: bold;
text-transform: uppercase;
transition: var(--transition);
}

.btn:hover {
background: var(--dark-color);
color: #fff;
transform: translateY(-3px);
box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
}

/* 特色区域 */
.features {
padding: 80px 0;
background-color: #fff;
}

.section-title {
text-align: center;
margin-bottom: 60px;
}

.section-title h2 {
font-size: 2.5rem;
color: var(--dark-color);
position: relative;
display: inline-block;
}

.section-title h2::after {
content: '';
position: absolute;
bottom: -10px;
left: 50%;
transform: translateX(-50%);
width: 70px;
height: 4px;
background: var(--primary-color);
}

.feature-grid {
display: flex;
flex-wrap: wrap;
justify-content: space-between;
}

.feature-card {
flex-basis: calc(33.333% - 30px);
background: var(--light-color);
border-radius: 10px;
padding: 30px;
margin-bottom: 30px;
box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
transition: var(--transition);
}

.feature-card:hover {
transform: translateY(-10px);
box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
}

.feature-card h3 {
font-size: 1.5rem;
margin-bottom: 15px;
color: var(--dark-color);
}

.feature-card p {
color: #777;
}

/* 页脚 */
.footer {
background-color: var(--dark-color);
color: #fff;
padding: 50px 0 20px;
}

.footer-content {
display: flex;
flex-wrap: wrap;
justify-content: space-between;
}

.footer-section {
flex-basis: calc(25% - 30px);
margin-bottom: 30px;
}

.footer-section h3 {
font-size: 1.2rem;
margin-bottom: 20px;
position: relative;
padding-bottom: 10px;
}

.footer-section h3::after {
content: '';
position: absolute;
bottom: 0;
left: 0;
width: 50px;
height: 2px;
background: var(--primary-color);
}

.footer-section a {
color: #ddd;
display: block;
margin-bottom: 10px;
transition: var(--transition);
}

.footer-section a:hover {
color: var(--primary-color);
padding-left: 5px;
}

.footer-bottom {
text-align: center;
padding-top: 20px;
border-top: 1px solid #444;
}

/* 响应式设计 */
@media (max-width: 768px) {
.feature-card {
flex-basis: calc(50% - 20px);
}
.footer-section {
flex-basis: calc(50% - 20px);
}
}

@media (max-width: 480px) {
.feature-card {
flex-basis: 100%;
}
.footer-section {
flex-basis: 100%;
}
.nav-menu {
display: none;
}
}
</style>
</head>
<body>
<!-- 导航栏 -->
<nav class="navbar">
<div class="container">
<div class="logo">设计<span>工作室</span></div>
<ul class="nav-menu">
<li><a href="#">首页</a></li>
<li><a href="#">服务</a></li>
<li><a href="#">作品</a></li>
<li><a href="#">关于</a></li>
<li><a href="#">联系</a></li>
</ul>
</div>
</nav>

<!-- 英雄区域 -->
<section class="hero">
<div class="container">
<h1>创造令人惊叹的数字体验</h1>
<p>我们是一家创意工作室，专注于设计与开发高质量、用户友好的网站和应用程序。</p>
<a href="#" class="btn">了解更多</a>
</div>
</section>

<!-- 特色区域 -->
<section class="features">
<div class="container">
<div class="section-title">
<h2>我们的服务</h2>
</div>
<div class="feature-grid">
<div class="feature-card">
<h3>网站设计</h3>
<p>我们创建美观、响应式的网站，为您的品牌提供完美的数字展示平台。</p>
</div>
<div class="feature-card">
<h3>用户体验</h3>
<p>我们注重用户体验，确保您的客户能够轻松找到所需信息并实现转化。</p>
</div>
<div class="feature-card">
<h3>移动应用</h3>
<p>我们开发直观、高性能的移动应用，帮助您的业务触达更多用户。</p>
</div>
</div>
</div>
</section>

<!-- 页脚 -->
<footer class="footer">
<div class="container">
<div class="footer-content">
<div class="footer-section">
<h3>关于我们</h3>
<p>我们是一家充满激情的设计工作室，致力于为客户创造卓越的数字体验。</p>
</div>
<div class="footer-section">
<h3>服务</h3>
<a href="#">网站设计</a>
<a href="#">用户体验</a>
<a href="#">移动应用</a>
<a href="#">品牌策略</a>
</div>
<div class="footer-section">
<h3>联系我们</h3>
<p>邮箱: info@example.com</p>
<p>电话: +123 456 7890</p>
</div>
<div class="footer-section">
<h3>关注我们</h3>
<a href="#">微信</a>
<a href="#">微博</a>
<a href="#">抖音</a>
</div>
</div>
<div class="footer-bottom">
<p>&copy; 2025 设计工作室. 保留所有权利。</p>
</div>
</div>
</footer>
</body>
</html>
EOF

# 配置 Nginx（关键：charset utf-8）
echo "🔧 正在配置 Nginx（需要 sudo 权限）..."
sudo tee /etc/nginx/sites-available/website > /dev/null << EOF
server {
    listen 80;
    server_name _;

    root $PROJECT_DIR/www;
    index index.html;

    # 解决中文乱码
    charset utf-8;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF

sudo ln -sf /etc/nginx/sites-available/website /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default 2>/dev/null || true
sudo nginx -t && sudo systemctl reload nginx

# 设置权限（必须！）
chmod o+x "/home/$USERNAME"
chmod -R o+rX "$PROJECT_DIR"

echo ""
echo "✅ 部署成功！"
echo "🌐 访问 http://$(hostname -I | awk '{print $1}') 查看网站"
echo "📁 项目路径: $PROJECT_DIR"
