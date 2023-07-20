FROM debian:latest

MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

LABEL maintainer="徐晓伟<xuxiaowei@xuxiaowei.com.cn>" \
      description="设置为阿里云镜像，更新 apt，安装 ca-certificates（libssl3、openssl 作为 ca-certificates 的依赖被安装）"

WORKDIR /etc/apt

ADD sources.list .

WORKDIR /

RUN apt update \
    && apt -y install ca-certificates \
    && apt update \
    && apt clean
