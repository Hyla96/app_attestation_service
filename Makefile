VERSION ?= v1

generate:
	protoc --proto_path=app_attestation_protos/ --go_opt=paths=source_relative --go_out=pkg/api/$(VERSION) --go-grpc_out=pkg/api/$(VERSION) --go-grpc_opt=paths=source_relative app_attestation_protos/*.proto
