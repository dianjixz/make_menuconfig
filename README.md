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


