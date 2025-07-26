GEN_DIR=gen/go/contract

.PHONY: generate help

generate:
	protoc -I proto proto/contract.proto --go_out=$(GEN_DIR) \
	--go_opt=paths=source_relative --go-grpc_out=$(GEN_DIR) \
	--go-grpc_opt=paths=source_relative

setup:
	mkdir -p $(GEN_DIR)

help:
	@echo "Available commands:"
	@echo "    generate     - generates protobuf templates for go"
	@echo "    setup        - creates environment required for build"
