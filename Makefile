.PHONY: init-gql-resolver
init-gql-resolver:
	go mod download
	go run github.com/99designs/gqlgen init

.PHONY: gen-gql-resolver
gen-gql-resolver: init-gql-resolver
	go run github.com/99designs/gqlgen generate

.PHONY: run-gql-playground
run-gql-playground:
	open "http://localhost:8080"
	go run server.go

.PHONY: gen-gql-doc
gen-gql-doc:
	npx spectaql -t spectaql/output spectaql/config.yaml

.PHONY: run-gql-doc
run-gql-doc:
	open "http://localhost:4400"
	npx spectaql -D -t spectaql/output spectaql/config.yaml
 