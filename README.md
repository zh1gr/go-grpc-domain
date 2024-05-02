# go-grpc-domain


Golang example project represent gRPC domain as library.

[Golang Client](https://github.com/zh1gr/go-grpc-client)<br>
[Golang Server](https://github.com/zh1gr/go-grpc-server)

### install
```shell
go get github.com/zh1gr/go-grpc-domain
```

### commands
`make go_mod` - update dependencies and store it in **vendor** directory in project

`make generate_grpc_invoice` - this command generates golang files for the gRPC communication protocol from the specified `invoice.proto` file using protocol buffers compiler (`protoc`).<br>
> Description:<br>
> `protoc`: The Protocol Buffers compiler (protoc) is used to compile the invoice.proto file.<br>
> `--go_out`: Specifies the output directory for Go language files generated from the .proto file. In this case, it's set to invoice directory.<br>
> `--go_opt`: Provides options to --go_out. Here, paths=source_relative sets the import path for generated Go files to be relative to the source directory.<br>
> `--go-grpc_out`: Specifies the output directory for gRPC Go language files generated from the .proto file.<br>
> `--go-grpc_opt`: Provides options to --go-grpc_out. Similar to --go_opt, paths=source_relative sets the import path for generated gRPC Go files to be relative to the source directory.<br>

`make update` - generates new proto golang files then updates golang dependencies 