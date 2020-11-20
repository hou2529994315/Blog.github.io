## 创建版本库
* git只能记录文本文件的变化
* 强烈建议使用标准的UTF-8编码，所有语言使用同一种编码，既没有冲突，又被所有平台所支持

* 千万不要使用Windows自带的记事本编辑任何文本文件。原因是Microsoft开发记事本的团队使用了一个非常弱智的行为来保存UTF-8编码的文件，他们自作聪明地在每个文件开头添加了0xefbbbf（十六进制）的字符，你会遇到很多不可思议的问题，比如，网页第一行可能会显示一个“?”，明明正确的程序一编译就报语法错误，等等

第一步、进入一个空目录
第二步、通过`git init`命令把这个目录变成Git可以管理的仓库
```
输入：git init

输出：Initialized empty Git repository in /Users/michael/learngit/.
```

**提交文件到版本库**
第一步，把文件添加到仓库
```
git add readme.txt
```

第二步，把文件提交到仓库
```
git commit -m "wrote a readme file"
```
`-m`面输入的是本次提交的说明,可以输入任意内容，当然最好是有意义的

`git commit`命令执行成功后会告诉你，`1 file changed`：1个文件被改动（我们新添加的readme.txt文件）；`2 insertions`：插入了两行内容（readme.txt有两行内容）


一个`commit`可以提交很多个文件，所以可以先`add`多个文件，再提交
```
git add file1.txt
git add file2.txt file3.txt
git commit -m "add 3 files."
```

## 疑难解答
Q：输入`git add readme.txt`，得到错误：`fatal: not a git repository (or any of the parent directories)`。

A：Git命令必须在Git仓库目录内执行（`git init`除外），在仓库目录外执行是没有意义的。

Q：输入`git add readme.txt`，得到错误`fatal: pathspec 'readme.txt' did not match any files`。

A：添加某个文件时，该文件必须在当前目录下存在，用`ls`或者`dir`命令查看当前目录的文件，看看文件是否存在，或者是否写错了文件名。


