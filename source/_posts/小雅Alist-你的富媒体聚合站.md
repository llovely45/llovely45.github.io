---
abbrlink: ''
categories:
- - 软件分享
date: '2025-01-16T07:58:56.737689+08:00'
tags:
- 软件分享
title: 小雅Alist-你的富媒体聚合站
updated: '2025-01-16T08:03:53.355+08:00'
---
## 小雅Alist介绍

小雅的alist是一个基于alist搭建的阿里云盘聚合站，资源极为丰富，分类细致，大约聚合了 391个阿里共享盘，合集 28 万的资源。同时提供docker镜像，可以快速搭建自己的镜像站。

官网地址：[http://alist.xiaoya.pro](http://alist.xiaoya.pro)

## 安装准备

### 阿里云盘Token

获取链接（二选一）

https://alist.nn.ci/zh/guide/drivers/aliyundrive.html

https://aliyuntoken.vercel.app/（不推荐）

![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250115114702.png)

根据指引扫码登录，并复制token后的字符串，保存至`mytoken.txt`文件中

### 阿里云盘OPen Token获取链接

https://alist.nn.ci/zh/guide/drivers/aliyundrive\_open.html

![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250115115251.png)

根据指引登录，并复制token后的字符串，保存至`myopentoken.txt`文件中

### 阿里云盘转存目录ID获取链接

浏览器打开阿里网盘，创建一个目录，复制当前链接最后一个/后的所有数字字母，保存至`temp_transfer_folder_id.txt`中

![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250115115655.png)

## 小雅安装

小雅安装有两种形式，一种docker手动安装，另一种利用一键安装脚本安装。本文展示在windows系统下，进行手动安装。

### 手动安装

#### docker面板安装

进入官网[https://www.docker.com/](https://www.docker.com/)，下载docker并安装![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250115120104.png)

#### 配置docker加速源

进入设置![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250115121954.png)

点击Docker Engine![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250115122111.png)

替换里面的内容为

```
{
  "builder": {
    "gc": {
      "defaultKeepStorage": "20GB",
      "enabled": true
    }
  },
  "experimental": false,
  "features": {
    "buildkit": true
  },
  "registry-mirrors": [
    "https://docker.mirrors.ustc.edu.cn",
    "https://registry.docker-cn.com",
    "http://hub-mirror.c.163.com",
    "https://mirror.ccs.tencentyun.com"
  ]
}
```

点击`Apply & restart`重启应用

#### 小雅安装

docker hub中搜索`xiaoyaliu/alist`

![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250115122840.png)

拉取`xiaoyaliu/alist`镜像

![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250116082214.png)

确保`Images`中`xiaoyaliu/alist`下载完毕![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250116082527.png)

在任意目录创建xiaoya文件夹，作为小雅的根目录，放入先前获取的三个文件![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250116082702.png)

`Win+R`键，输入cmd回车，打开命令行，输入`docker run --name xiaoya -v D:/软件/xiaoya:/data -p 34567:80 xiaoyaliu/alist`![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250116083308.png)

其中`D:/软件/xiaoya`替换为先前创建的xiaoya文件夹的所在位置。关闭命令行，打开浏览器访问`http://你电脑的ip:34567`，本机访问可打开[http://127.0.0.1:34567](http://127.0.0.1:34567)即可访问小雅。![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250116083736.png)

放开玩吧，搜索想要观看的电视剧/电影，即可跳转播放![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250116083947.png)

(在线观看压画质，video串流播放限速)
