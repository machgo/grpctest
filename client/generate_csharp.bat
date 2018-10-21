setlocal

@rem enter this directory
cd /d %~dp0

@rem packages will be available in nuget cache directory once the project is built or after "dotnet restore"
set PROTOC=%UserProfile%\.nuget\packages\Google.Protobuf.Tools\3.6.1\tools\windows_x64\protoc.exe
set PLUGIN=%UserProfile%\.nuget\packages\Grpc.Tools\1.15.0\tools\windows_x64\grpc_csharp_plugin.exe

%PROTOC% -I ../hello --csharp_out=. ../hello/hello.proto --grpc_out=. --plugin=protoc-gen-grpc=%PLUGIN%

endlocal