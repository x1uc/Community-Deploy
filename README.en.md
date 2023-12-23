[简体中文](https://github.com/x1uc/Community-Deploy/blob/main/README.md) | English

## System: 
CentOS8.4
## Source
- Front source code: [Community-Front](https://github.com/x1uc/Community-front)

- Backend source code: [Community-Backend](https://github.com/x1uc/Community-backend)
## Environmental preparation
### docker install 
#### 1.Uninstall an older version
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
#### 2.Install the docker base package
- ```
  yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
  ```
#### 3 Install Docker Engine - Community 
- ```
  yum install docker-ce docker-ce-cli containerd.io
  ```
#### 4 Start-up and test
- ```
  sudo systemctl start docker  # start docker
  docker run hello-world  # test 
  ```
### pull dockercompose.yml and some config file
For the following two lines of command, you only need to select one line to execute.
If you are in China please use the following, it can guarantee your download speed.
- pull github repository: ```https://github.com/x1uc/Community-Deploy.git && cd Community-Deploy && cd Syuct_forum```
- pull gitee repository:  ```https://gitee.com/x1uc/Community-Deploy.git && cd Community-Deploy && cd Syuct_forum```

### start service
```
docker compose up
```

docker installation varies slightly depending on the operating system.

