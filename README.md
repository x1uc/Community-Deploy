简体中文|[English](https://github.com/x1uc/Community-Deploy/blob/main/README.en.md)

# Community
Docker 一键部署Community 项目
## 项目源码
- 项目前端地址: [Community-Front](https://github.com/x1uc/Community-front)
- 项目前端地址: [Community-backend](https://github.com/x1uc/Community-backend)
## 环境准备
### docker安装（环境为CentOS8.4）参考[Centos8安装docker](https://developer.aliyun.com/article/748412)
#### 1.卸载老版本
- ```
  yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
  ```
#### 2.安装docker基础包
- ```
  yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
  ```
#### 3设置稳定仓库
- ```
  yum-config-manager \
    --add-repo \
    https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
  ```
#### 4 安装Docker Engine - Community --此命令会安装最新版本(latest)
- ```
  yum install docker-ce docker-ce-cli containerd.io
  ```
#### 5启动与测试
- ```
  sudo systemctl start docker  # 启动docker
  docker run hello-world  #测试
  ```
### 拉取dockercompose.yml 以及 相关配置
- 拉取github仓库: https://github.com/x1uc/Community-Deploy.git && cd Community-Deploy && cd Syuct_forum
- 拉取gitee仓库:  https://gitee.com/x1uc/Community-Deploy.git && cd Community-Deploy && cd Syuct_forum

###开启服务
```
docker compose up
```

不同系统进行部署可能有细微不同




