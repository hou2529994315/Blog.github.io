# BUG记录

1. vue设置路由后，页面打不开，并且浏览器的终端中报错
```
[vue-router] "path" is required in a route configuration.
```

问题原因路由配置时出现了多余的花括号，并且vue不会报错，删掉即可
```
const routes = [
    {
        path: "/",
        name: "Login",
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () =>
        import(/* webpackChunkName: "about" */ "../views/Login.vue")
    },
    {
        //这里的花括号就是多余的
    }
```
