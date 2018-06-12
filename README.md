# myconfig

#### 项目介绍
项目配置工具 menuconfig 添加config管理


#### 软件架构
软件架构说明


#### 安装教程
```shell
1. git clone https://gitee.com/wefeng/myconfig
2. make test_defconfig
3. 准备好项目工程
4. ./install.sh <project dir>
```

#### 使用说明

1. Kconfig语言编写，请自行上网搜索
2. configs目录用于存放不同的配置
3. `make test_defconfig`初始化配置
4. `make menuconfig` 配置项目
5. `make saveconfig` 保存默认配置

#### 参与贡献

1. Fork 本项目
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request


#### 码云特技

1. 使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2. 码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3. 你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4. [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5. 码云官方提供的使用手册 [http://git.mydoc.io/](http://git.mydoc.io/)
6. 码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)