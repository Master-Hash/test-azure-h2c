# test-azure-h2c

## 当前配置状态

- [x] local h1,h2c index
- [x] local h2,h3 index with [localhost.direct](https://get.localhost.direct/)
- [ ] local naïve with [localhost.direct](https://get.localhost.direct/) 有 [net_error -101](https://github.com/klzgrad/naiveproxy/blob/f032d7911c59a6bcc288519ff30c4381e2912375/src/net/base/net_error_list.h#L137) 考虑我曾经用相同的容器环境部署 v2ray 也有锅，Windows native 环境正常，我怀疑是 Rancher Desktop 和 WSL 其中之一的问题。
- [x] Azure h1 index
- [ ] Azure h2 proxy index 测试 h2c 本是初衷，可还是没成功（
- [ ] Azure naïve
