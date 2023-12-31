FROM debian:latest

MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

LABEL maintainer="徐晓伟<xuxiaowei@xuxiaowei.com.cn>" \
      description="设置为阿里云镜像，更新 apt，安装 ca-certificates（目的是为了能验证阿里云的域名证书，libssl3、openssl 作为 ca-certificates 的依赖被安装）"

# 安装依赖时，增加 --no-install-recommends 参数，不自动安装推荐的依赖

RUN if [ -f /etc/apt/sources.list ]; then \
      cat /etc/apt/sources.list; \
    fi \
    && apt-get update \
    && apt-get -y install ca-certificates; \
    if [ -f /etc/apt/sources.list ]; then \
      sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list \
        && sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list; \
    else \
      echo "deb https://mirrors.aliyun.com/debian bullseye main" > /etc/apt/sources.list \
        && echo "deb https://mirrors.aliyun.com/debian-security bullseye-security main" >> /etc/apt/sources.list \
        && echo "deb https://mirrors.aliyun.com/debian bullseye-updates main" >> /etc/apt/sources.list; \
    fi \
    && cat /etc/apt/sources.list \
    && apt-get update \
    && apt-get clean
