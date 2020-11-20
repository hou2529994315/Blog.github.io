# 创建工程

## 前提
**VuePress**的工程创建基于**Vue**,因此建议先了解以下Vue的环境配置。[Vue工程的环境创建过程](https://cn.vuejs.org/v2/guide/)

## 简介
VuePress是一个由Vue驱动的静态网站生成器

每一个由 VuePress 生成的页面都带有预渲染好的 HTML，也因此具有非常好的加载性能和搜索引擎优化（SEO）。同时，一旦页面被加载，Vue 将接管这些静态内容，并将其转换成一个完整的单页应用（SPA），其他的页面则会只在用户浏览到的时候才按需加载。

## 创建工程

①创建工程目录

②使用包管理工具进行初始化
```
yarn init # npm init
```
一直回车，完成初始化

③为工程安装VuePress
```
yarn add -D vuepress # npm install -D vuepress
```

④创建文档 `/docs/README.md`，并写入markdown语句

⑤在`package.json`文件中添加一些 `scrits`
```
{
  "scripts": {
    "docs:dev": "vuepress dev docs",
    "docs:build": "vuepress build docs"
  }
}
```
⑥在本地启用服务器
```
yarn docs:dev # npm run docs:dev
```
访问[http://localhost:8080](http://localhost:8080)即可查看VuePress生成的页面

## 默认路由
由于`package.json`中配置了docs，所以所有的“文件的相对路径”都是基于`docs`目录的。

默认的页面路由地址如下：

|文件的相对路径|页面路由地址|
|:----:|:----:|
|`/README.MD`|`/`|
|`/guide/README.md`|`/guide/`|
|`config.md`|`/config.html`|

<br/>
<br/>

# 基本配置
## 配置文件
如果不进行配置，我们无法在网站上自由的导航。为了更好的自定义网站。需要创建一个`.vuepress`目录。项目结构如下：
```
.
├─ docs
│  ├─ README.md
│  └─ .vuepress
│     └─ config.js
└─ package.json
```

首先添加一个必要的配置文件`.vuepress/config.js`,文件内容如下
```
module.exports = {
  title: 'Hello VuePress',
  description: 'Just playing around'
}
```
添加该配置文件后，重新运行 `dev server`，你的页面会出现一个标题和一个搜索框。点击标题，你可以回到根目录；通过搜索框，你可以搜索并访问所有页面的标题、`h2`和`h3`。


## 主题配置
VuePress中自带了一个默认的主题，同时，[默认主题](https://www.vuepress.cn/theme/default-theme-config.html)也提供了一些选项，让你可以去自定义导航栏（navbar）、侧边栏（sidebar）和首页（homepage）等,
同时它也支持[自定义主题](https://www.vuepress.cn/theme/)

### 导航栏
**导航栏logo**
```
// .vuepress/config.js
module.exports = {
  themeConfig: {
    logo: '/assets/img/logo.png',
  }
}
```
**导航栏链接**
```
// .vuepress/config.js
module.exports = {
  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/guide/' },
      { text: 'External', link: 'https://google.com' },
    ]
  }
}
```
**禁用导航栏**
```
// .vuepress/config.js
module.exports = {
  themeConfig: {
    navbar: false
  }
}
```



### 自动生成侧边栏
**单页面生成侧边栏**
文档头部添加
```
---
sidebar: auto
---
```

**所有的页面都自动生成侧边栏**
在配置文件中启用它
```
// .vuepress/config.js
module.exports = {
  themeConfig: {
    sidebar: 'auto'
  }
}
```
