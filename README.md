# Vite Starter

A fresh and elegant admin template, based on Vue3、Vite7、TypeScript、NaiveUI and UnoCSS.

一个基于 Vue3、Vite7、TypeScript、NaiveUI 和 UnoCSS 的清新优雅的中后台模版。

## 🚀 特性

- ⚡ **Vue 3** + **Vite 7** - 最新的前端技术栈
- 🎨 **Naive UI** - 现代化 UI 组件库
- 🎯 **UnoCSS** - 原子化 CSS 引擎
- 🔧 **TypeScript** - 类型安全的开发体验
- 📱 **响应式设计** - 支持移动端和桌面端
- 🌐 **国际化** - 支持中英文切换
- 🎨 **主题系统** - 完整的深色/浅色模式支持
- 📊 **数据可视化** - 集成 ECharts
- 🔄 **状态管理** - 基于 Pinia
- 🛣️ **路由系统** - 基于 Vue Router 4
- 🏗️ **模块化架构** - 清晰的项目结构

## 🛠️ 技术栈

- **框架**: Vue 3.5
- **构建工具**: Vite 7.3
- **UI 组件**: Naive UI 2.43
- **样式**: UnoCSS 66.5
- **状态管理**: Pinia 3.0
- **路由**: Vue Router 4.6
- **类型检查**: TypeScript 5.9
- **包管理**: pnpm

## 📦 安装

### 环境要求

- Node.js >= 20.19.0
- pnpm >= 10.5.0

### 安装依赖

```bash
pnpm install
```

## 🚀 开发

### 启动开发服务器

```bash
# 开发模式（使用测试环境配置）
pnpm dev

# 或使用生产环境配置
pnpm dev:prod
```

### 构建生产版本

```bash
pnpm build
```

### 预览生产版本

```bash
pnpm preview
```

## 📜 可用脚本

```bash
# 开发
pnpm dev                 # 开发服务器（测试环境）
pnpm dev:prod           # 开发服务器（生产环境）

# 构建
pnpm build              # 生产构建
pnpm build:test         # 测试环境构建

# 代码质量
pnpm typecheck          # TypeScript 类型检查
pnpm lint               # ESLint 代码检查和修复

# 工具
pnpm cleanup            # 清理缓存
pnpm gen-route          # 生成路由
pnpm update-pkg         # 更新包版本

# Git
pnpm commit             # 交互式提交（中文）
pnpm commit:zh          # 交互式提交（中文）
pnpm release            # 发布新版本
```

## 🌐 部署到 GitHub Pages

### 自动部署（推荐）

1. **推送代码到 GitHub**

   将代码推送到 GitHub 的 `main` 分支，GitHub Actions 会自动触发部署：

   ```bash
   git add .
   git commit -m "feat: add new feature"
   git push origin main
   ```

2. **启用 GitHub Pages**

   进入 GitHub 仓库设置：
   - 进入 **Settings** → **Pages**
   - **Source** 选择 **GitHub Actions**
   - 保存设置

3. **访问站点**

   部署完成后，访问 `https://[你的用户名].github.io/[仓库名]/`

### 手动部署

如果需要手动部署：

```bash
# 构建项目
pnpm build

# 部署到 GitHub Pages（需要配置正确的 base URL）
# 在 vite.config.ts 中确保 base 设置为你的仓库名
# 例如: base: '/your-repo-name/'
```

## 🏗️ 项目结构

```
vite-starter/
├── build/                 # 构建配置
├── packages/              # 工作空间包
│   ├── axios/            # HTTP 请求库
│   ├── color/            # 颜色工具
│   ├── hooks/            # Vue Hooks
│   ├── materials/        # UI 组件库
│   ├── scripts/          # 脚本工具
│   ├── uno-preset/       # UnoCSS 预设
│   └── utils/            # 工具函数
├── public/               # 静态资源
├── src/                  # 源代码
│   ├── components/       # 组件
│   ├── constants/        # 常量
│   ├── hooks/           # Vue Hooks
│   ├── layouts/         # 布局组件
│   ├── locales/         # 国际化
│   ├── router/          # 路由配置
│   ├── service/         # API 服务
│   ├── store/           # 状态管理
│   ├── styles/          # 样式文件
│   ├── theme/           # 主题配置
│   ├── typings/         # 类型定义
│   ├── utils/           # 工具函数
│   └── views/           # 页面组件
├── .github/             # GitHub 配置
│   └── workflows/       # GitHub Actions
├── index.html           # HTML 模板
├── package.json         # 包配置
├── pnpm-workspace.yaml # 工作空间配置
├── tsconfig.json        # TypeScript 配置
├── uno.config.ts        # UnoCSS 配置
└── vite.config.ts       # Vite 配置
```

## 🔧 配置说明

### 环境变量

创建 `.env` 文件来配置环境变量：

```env
# 基础路径（用于 GitHub Pages 部署）
VITE_BASE_URL=/

# API 基础地址
VITE_BASE_API_URL=https://api.example.com
```

### 主题配置

项目支持完整的主题自定义：

- **颜色主题**: 支持浅色/深色/自动模式
- **布局模式**: 支持多种布局方式
- **组件样式**: 可自定义圆角、阴影等
- **字体**: 默认使用 Inter 字体

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

### 开发规范

1. 使用 **ESLint** + **Prettier** 进行代码格式化
2. 使用 **TypeScript** 进行类型检查
3. 遵循 **Vue 3 Composition API** 最佳实践
4. 使用 **UnoCSS** 原子化样式
5. 提交前请运行 `pnpm typecheck && pnpm lint`

## 📄 许可证

[MIT License](LICENSE)

## 🙏 致谢

感谢以下开源项目的贡献：

- [Vue](https://vuejs.org/)
- [Vite](https://vitejs.dev/)
- [Naive UI](https://www.naiveui.com/)
- [UnoCSS](https://unocss.dev/)
- [VueUse](https://vueuse.org/)

---

Made with ❤️ by [Your Name]
