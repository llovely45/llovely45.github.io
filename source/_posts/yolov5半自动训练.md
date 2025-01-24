---
abbrlink: ''
categories:
- - 软件教程
date: '2025-01-24T12:50:39.353289+08:00'
tags:
- 软件教程
title: yolov5半自动训练
updated: '2025-01-24T12:53:05.209+08:00'
---
## 下载源码

打开git bash，运行以下命令

```
git clone https://github.com/cnyvfang/labelGo-Yolov5AutoLabelImg.git
```

进入文件夹

## 修改类别

/data/predefined\_classes.txt下，修改类别

将进行训练自己标注的数据的yolov5文件里的utils文件拷贝到labelGo-Yolov5AutoLabelImg-5\_v5\_source文件夹里。将yolov5/mode文件夹里的yolo.py，拷贝到labelGo-Yolov5AutoLabelImg-5\_v5\_source/libs/models

切换中文版本请编辑\\libs\\stringBundle.py

libs目录下运行pyrcc5 ../resources.qrc -o resources.py
