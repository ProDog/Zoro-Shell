# Zoro 节点维护脚本
这里的脚本可以在一台机器上快速部署和维护四个 Zoro Node，Node1 具有 ApplicationLogs 和 Rpc 功能 .

`产生的代码文件和 Node 数据在 root/Zoro-Test/ 目录下，Rpc 端口为 20331 .`
### 先 clone 该仓库到目标机器:
```
git clone https://github.com/ProDog/Zoro-Shell.git
```
进入 Zoro-Shell 目录：
```
cd Zoro-Shell
```
### 创建 Node1-4:
```
sh init.sh
```
### 启动 Node1-4:
```
sh start.sh
```
### 停止 Node1-4:
```
sh stop.sh
```
### 删除区块数据:
```
sh clear.sh
```
### 更新全部文件:
```
sh update.sh
```
### 只更新 Zoro.dll:
```
sh update-zoro.sh
```
Node 启动后，可以使用 http://xx.xx.xx.xx:20331/?jsonrpc=2.0&id=1&method=getblockcount&params=[''] 来验证是否部署成功 .