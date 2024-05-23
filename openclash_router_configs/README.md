## 简介：

**Clash Meta Core手动更新**[点击这里进入下载页面](https://github.com/vernesong/OpenClash/tree/core/dev/meta)

## 更新教程：
1. 进入OpenWrt后台，状态->概览，查看架构是X86还是ARM64，不知道就复制架构搜索一下
2. 进入下载页面下载对应内核，返回Openwrt后台，系统->文件传输，选择文件并上传
3. 使用命令 `tar -zxvf 文件包名.tar.gz`解压，**注意替换文件包名**
4. 使用命令 `mv 文件包名 clash_meta`解压，文件包名可以用`ls`命令查看
5. 使用命令 `chmod 777 clash_meta`将文件赋予读写权限
6. 使用命令 `mv clash_meta /etc/openclash/core`复制到openclash内核路径即可完成更新！

## 其他问题
1. 插件运行时，内存占用会逐渐变高及DNS缓存的问题，在插件设置->定时重启 内开启定时重启，并设置每天凌晨时间段重启就行
2. 在模式设置中，推荐使用Fake-IP(增强)模式，不要勾选UDP流量转发。