## ProtoBufTools
LollipopGo分布式游戏框架，protobuf协议生成工具

使用方式：
~~~~
1. 前后端定义msg.proto文件，拷贝到目录：ProtoBufTools\proto
2. 管理员身份windows系统执行：start.bat; 如果是MAC系统执行：start.sh
3. 执行2步骤后，如果无报错(msg.proto无语法错误)，Go协议的peotobufs生成目录：ProtoBufTools\protobuf
~~~~

注意事项：
~~~~
1. 定义的协议文件名字为：msg.proto
原因：批处理或者脚本中名字是msg，如果是项目自己需要就可以自行修改
~~~~

```
@echo off
protoc msg.proto --go_out=../protobuf

echo 开始生成proto文件
for %%s in (*.proto) do (
    if not %%s == msg.proto (
    echo 生成 %%~ns 文件
    cd ../protobuf
    mkdir %%~ns
    cd ../proto
    protoc %%s --go_out=../../../msg/%%~ns
    )
)

echo 删除proto临时文件夹
rd /q /s pokerking

echo 生成完成！
pause 

protoc %%s --go_out=../protobuf/%%~ns
```
