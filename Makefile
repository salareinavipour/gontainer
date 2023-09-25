##@ Development

.PHONY: ready
ready: dep format vet lint ## Make sure code it ready to commit

dep:  ## Install and download dependencies
	go mod tidy
	go mod verify
	go mod download

format: ## Format the Golang files
	go fmt ./...

lint: ## Run Golang linter
	golangci-lint run -v

vet: ## Run go vet against code.
	go vet ./...
##@ Happy making!
