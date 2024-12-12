# DonutCarMonitor

# 使用说明
- 支持MSVC、MinGW，release和debug编译
- 修改build.bat中的Qt，改为你的Qt安装目录的绝对路径
- 然后根据需要分别设置MSVC或者MinGW的cmake目录的绝对路径
- 本项目是参考B站Dennis-X大佬的教程，并在其基础上加以改进，融合了车机界面和车模型浏览功能
# MSVC构建
- build.bat修改完成后直接运行即可，MSVC构建后还需运行install.bat打包相关的库文件到执行目录才能在VisualStudio中调试项目
# MinGW构建
- 使用QtCreator打开，不支持VisualStudio



# 运行效果图
- 主页
![image](https://github.com/user-attachments/assets/05fe7455-49af-4b2b-9a7d-ca24b9ef77e3)

- 3D车模型浏览
![image](https://github.com/user-attachments/assets/2316e79e-744c-40bf-a2b1-9050aa1f2303)
- 实现车门开关动画，摄像机视角动画
  ![image](https://github.com/user-attachments/assets/d811f711-b936-4b72-9fd9-652f92918829)
- 车内视角
  ![image](https://github.com/user-attachments/assets/a21c9672-024d-4c45-a60a-8c72cc521158)

  
- 实现空调出风口粒子效果，以及空调出风方向控制
  ![image](https://github.com/user-attachments/assets/94f6b3c4-6eb6-44dc-b660-10020b0a1d84)
  ![image](https://github.com/user-attachments/assets/5ba35375-7ef6-4fd6-9626-b8f21c1f7365)

- 应用页面
  ![image](https://github.com/user-attachments/assets/6b197784-3a6d-40eb-a0b8-3aa9667400d8)

- 设置页面
  ![image](https://github.com/user-attachments/assets/ffe83950-45eb-4c1a-94c5-5ac9e0752aab)

- 空调控制页面
  ![image](https://github.com/user-attachments/assets/11212614-8be2-460e-8525-a3917692e73b)


