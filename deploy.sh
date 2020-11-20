#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 删除不想上传的文件
rm -rf Private

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:hou2529994315/Blog.github.io.git master
#git push -f git@github.com:hou2529994315/bolg.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
#git push -f git@github.com:hou2529994315/Blog.git master:gh-pages

cd -

