---
abbrlink: ''
categories:
- - 软件教程
date: '2025-01-20T19:07:40.670605+08:00'
tags:
- 软件教程
title: 本地部署ai大模型01：安装cuda
updated: '2025-01-20T19:07:43.296+08:00'
---
## 本地部署ai大模型01：安装cuda&cudnn

## cuda安装

打开nvidia控制面板-系统信息-组件，查看cuda版本![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250120191011.png)

进入[cuda toolkit网站](https://developer.nvidia.com/cuda-downloads)，选择对应的系统和架构，进行下载。

![](https://lin8177.oss-cn-shenzhen.aliyuncs.com/20250120191404.png)

```
最高版本：nvidia-smi
当前版本：nvcc --version
```

观察到输出即可。

---

## cudnn安装
