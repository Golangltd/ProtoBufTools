@echo off

protoc msg.proto --go_out=../protobuf

echo ��ʼ����proto�ļ�
for %%s in (*.proto) do (
    if not %%s == msg.proto (
    echo ���� %%~ns �ļ�
    cd ../protobuf
    mkdir %%~ns
    cd ../proto
    protoc %%s --go_out=../../../msg/%%~ns
    )
)

echo ɾ��proto��ʱ�ļ���
rd /q /s pokerking

echo ������ɣ�
pause 

protoc %%s --go_out=../protobuf/%%~ns