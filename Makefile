go_mod:
	go mod tidy && go mod vendor && go mod verify

generate_grpc_invoice:
	protoc --go_out=invoice \
	--go_opt=paths=source_relative \
	--go-grpc_out=invoice \
	--go-grpc_opt=paths=source_relative \
	invoice.proto

.PHONY: update
update: generate_grpc_invoice go_mod