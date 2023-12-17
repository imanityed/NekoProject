# 项目部署文档
- **本文档内容大小写敏感，注意区分大小写。**

## 1. 文档默认密钥
​           本部署文档数据默认 AES 密钥为 "Neko"。

## 2. 配置虚拟化环境

### 	2.1 启用硬件虚拟化支持

​			在 BIOS 设置中启用虚拟化功能（VT-x 或 AMD-V）。

### 	2.2 检查硬件虚拟化支持状态

​			① 打开 Windows 任务管理器

​			② 选择“性能”选项卡

​			③ 点击 “CPU”项

​			④ 查看右侧 CPU 信息中“虚拟化”是否显示为 “已启用”，需为“已启用”状态。

### 	2.3 配置虚拟化平台

​			① 打开 Windows 控制面板

​			② 打开其中的“程序和功能”

​			③ 打开左上角的“启用或关闭 Windows 功能

​			④ 勾选以下复选框

​					☑**Hyper-V**

​					☑**Windows 虚拟机程序监控平台**

​					☑**适应于 Linux 的 Windows 子系统**

​					☑**虚拟机平台**

​			⑤ 应用更改并重启计算机

​			⑥ 安装 WSL 内核文件更新

​					[WSL 更新](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

## 3. Docker Desktop 配置

​			① 下载安装 Docker Desktop 主程序

​					[Docker Desktop](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module)

​			② 安装完成后选择“Close and log out”。关闭安装程序，并注销登录。

​			③ 重新登录后打开 Docker Desktop ,选择 "Accept"接受服务协议。

​			④ 选择"Use recommended settings"，使用推荐的设置启动 Docker Desktop 。

​			⑤ 选择“Continue without signing in”，跳过登录。

​			⑥ 选择"Skip"，跳过用途调查，进入主界面。

## 4. 端口占用检查

​			运行“PortCheck.bat”，端口检查脚本。如有端口被占用，请按提示关闭占用端口的程序。

## 5.部署 Docker 容器

​			以管理员权限打开"Windows Power Shell"并切换到项目所在目录输入：

```powershell
docker compose -f docker.yaml build
```
