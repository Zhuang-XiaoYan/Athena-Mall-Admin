# Athena-RuoYi

本项目主要介绍构建athena-ruoyi项目生产云部署工作，后期将全部服务完整上云。
该仓库同时为后期大规模服务上云以及灰度发布等功能进行演习与测试。

![img.png](Xmind/images/ruoyi-architecture.png)
![img.png](Xmind/images/ruoyi.jpg)
![img.png](Xmind/images/ruoyi2.png)
![img.png](Xmind/images/ruoyi3.png)

-----------------------------------------------------------------------------------------------
其他平台将同步更新

- Github：https://github.com/2462612540
- Gitee：https://gitee.com/xjl2462612540
- CSDN：https://blog.csdn.net/weixin_41605937?spm=1001.2014.3001.5343

<mark>**整理不易，还望各位看官一键三连 :heart: :heart: :heart: **</mark>

-----------------------------------------------------------------------------------------------

# 一、Xmind


# 二、Athena-RuoYi 阿里云仓库

```
开发仓库：registry.cn-hangzhou.aliyuncs.com/athena-zhaungxiaoyan/athena-ruoyi-dev
测试仓库：registry.cn-hangzhou.aliyuncs.com/athena-zhaungxiaoyan/athena-ruoyi-test
生产仓库：registry.cn-hangzhou.aliyuncs.com/athena-zhaungxiaoyan/athena-ruoyi-product
```

1. 登录阿里云Docker Registry

```shell
$ docker login --username=18279148786 registry.cn-hangzhou.aliyuncs.com
```

用于登录的用户名为阿里云账号全名，密码为开通服务时设置的密码。 您可以在访问凭证页面修改凭证密码。

2. 从Registry中拉取镜像

```shell
$ docker pull registry.cn-hangzhou.aliyuncs.com/athena-zhaungxiaoyan/athena-ruoyi-product:[镜像版本号]
```

3. 将镜像推送到Registry

```shell
$ docker login --username=18279148786 registry.cn-hangzhou.aliyuncs.com
$ docker tag [ImageId] registry.cn-hangzhou.aliyuncs.com/athena-zhaungxiaoyan/athena-ruoyi-product:[镜像版本号]
$ docker push registry.cn-hangzhou.aliyuncs.com/athena-zhaungxiaoyan/athena-ruoyi-product:[镜像版本号]
```

请根据实际镜像信息替换示例中的[ImageId]和[镜像版本号]参数。

4. 选择合适的镜像仓库地址

从ECS推送镜像时，可以选择使用镜像仓库内网地址。推送速度将得到提升并且将不会损耗您的公网流量。
如果您使用的机器位于VPC网络，请使用 registry-vpc.cn-hangzhou.aliyuncs.com 作为Registry的域名登录。

5. 示例

使用"docker tag"命令重命名镜像，并将它通过专有网络地址推送至Registry。

```shell
$ docker images
REPOSITORY                                                         TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
registry.aliyuncs.com/acs/agent                                    0.7-dfb6816         37bb9c63c8b2        7 days ago          37.89 MB
$ docker tag 37bb9c63c8b2 registry-vpc.cn-hangzhou.aliyuncs.com/acs/agent:0.7-dfb6816
```

使用 "docker push" 命令将该镜像推送至远程。
```shell
$ docker push registry-vpc.cn-hangzhou.aliyuncs.com/acs/agent:0.7-dfb6816
```

# Project Summary
