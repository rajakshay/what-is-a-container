# Define variables for re-usability
app_hello_world=python_hello_world
hello_world: build_$(app_hello_world) run_$(app_hello_world)
	
app_http_request=python_http_request
http_request: build_$(app_http_request) run_$(app_http_request)

build_$(app_hello_world):
	@echo "Building Dockerfile for Application: $(app_hello_world)"
	docker build --tag $(app_hello_world) --file=$(app_hello_world)/Dockerfile .

run_$(app_hello_world):
	@echo "Running Application: $(app_hello_world)"
	docker run $(app_hello_world)

build_$(app_http_request):
	@echo "Building Dockerfile for Application: $(app_http_request)"
	docker build --tag $(app_http_request) --file=$(app_http_request)/Dockerfile .

run_$(app_http_request):
	@echo "Running Application: $(app_http_request)"
	docker run $(app_http_request)