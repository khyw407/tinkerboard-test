#!/bin/bash

# 다양한 OS환경에서 동일한 기능을 제공하기 위한 가장 간단한 방법은 Docker
# 가장 많이 사용하는 컨테이너 기술이며, 개발환경 수준에서는 Kubernetes와 같은 오케스트레이션 툴이 굳이 없어도 PoC 레벨에서는 검증 가능
# DB와 같이 여러 소프트웨어를 로컬에 임의로 쉽게 설치, 테스트가 가능하며 삭제 또한 쉽다는 장점이 있음
# 단, 데이터를 영구적으로 저장하기 위해서는 Persistence volume을 별도로 연결해야하며 CLI를 통해 명령어를 입력 또는 GUI로 설정 가능

# debian 계열은 리눅스 패키지 관리자로 apt를 사용(다양한 응용 소프트웨어를 설치할 수 있음)
# ex) curl, docker, ssh, openssl 등등

# Install Docker for ARM
sudo apt-get -y update
sudo apt-get -y upgrade
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker `whoami`
sudo apt -y autoremove

# Verify installation
docker run hello-world
