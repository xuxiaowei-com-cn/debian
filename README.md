# debian 设置为阿里云镜像

1. 将 debian 镜像源设置为 [阿里云镜像源](https://developer.aliyun.com/mirror/deepin)，开箱即用，避免 `apt update` 时间过长
2. 分支
    1. `main`
        1. debian:latest 镜像
    2. `debian:12`
        1. debian:12 镜像
    3. `debian:11`
        1. debian:11 镜像
    4. `debian:10`
        1. debian:10 镜像

| 原始镜像          | DockerHub 地址                 | 极狐GitLab                                                   |
|---------------|------------------------------|------------------------------------------------------------|
| debian:latest | xuxiaoweicomcn/debian:latest | registry.jihulab.com/xuxiaowei-com-cn/debian/debian:latest |
| debian:12     | xuxiaoweicomcn/debian:12     | registry.jihulab.com/xuxiaowei-com-cn/debian/debian:12     |
| debian:11     | xuxiaoweicomcn/debian:11     | registry.jihulab.com/xuxiaowei-com-cn/debian/debian:11     |
| debian:10     | xuxiaoweicomcn/debian:10     | registry.jihulab.com/xuxiaowei-com-cn/debian/debian:10     |
