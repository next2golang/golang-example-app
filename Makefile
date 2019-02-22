DATABASE_URL=oauth2_development

test:
	go test ./...

run_client:
	go run client_example/client.go

run_development:
	go run main.go

coverage:
	go test -coverprofile=coverage.out ./...
	go tool cover -html coverage.out

createdb:
	createdb $(DATABASE_URL)

dropdb:
	dropdb $(DATABASE_URL)
