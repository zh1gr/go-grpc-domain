# go-grpc-domain

---

Golang example project represent gRPC domain as library.

[Golang Client](https://github.com/zh1gr/go-grpc-client)<br>
[Golang Server](https://github.com/zh1gr/go-grpc-server)

### install

---

```shell
go get github.com/zh1gr/go-grpc-domain
```

### commands

---

`make go_mod` - update dependencies and store it in **vendor** directory in project

`make generate_grpc_invoice` - this command generates golang files for the gRPC communication protocol from the specified `invoice.proto` file using protocol buffers compiler (`protoc`).<br>
> Description:<br>
> `protoc`: The Protocol Buffers compiler (protoc) is used to compile the invoice.proto file.<br>
> `--go_out`: Specifies the output directory for Go language files generated from the .proto file. In this case, it's set to invoice directory.<br>
> `--go_opt`: Provides options to --go_out. Here, paths=source_relative sets the import path for generated Go files to be relative to the source directory.<br>
> `--go-grpc_out`: Specifies the output directory for gRPC Go language files generated from the .proto file.<br>
> `--go-grpc_opt`: Provides options to --go-grpc_out. Similar to --go_opt, paths=source_relative sets the import path for generated gRPC Go files to be relative to the source directory.<br>

`make update` - generates new proto golang files then updates golang dependencies.

### project files

---

 - **Makefile** - Script containing commands for automating common development tasks such as building, testing, and running the project.
 - **invoice.proto** - Protocol Buffers (proto) file defining the structure and methods for handling invoices in a gRPC service.
 - *invoice* - Directory containing generated code from the `invoice.proto` file, such as Go language structs and methods.
 - **go.mod** - File defining the module and dependencies for the Go project.
 - *vendor* - Directory containing third-party dependencies managed by a dependency management tool like Go modules or dep.

### invoice.proto description

---

 - `service Invoice` - Defines a gRPC service named **Invoice**.
 - `message CreateRequest` - Defines a message structure for a request to create an invoice 
 - `message CreateResponse` - Defines a message structure for the response to a create invoice request

### Credits

---

Based by tutorial from _Maximilien Andile_ [video](https://youtu.be/gbrPMv_GuQY?)