# what-is-a-container

Examples of code in containers, and why we need them.

## Running Instructions

### Application: python_hello_world

```make
make hello_world
```

```docker
Building Dockerfile for Application: python_hello_world
docker build --tag python_hello_world --file=python_hello_world/Dockerfile .
Sending build context to Docker daemon  70.66kB
Step 1/3 : FROM python:rc-alpine3.10
 ---> e528b163d7d0
Step 2/3 : COPY python_hello_world/hello_world.py /
 ---> Using cache
 ---> 24ce9f555a6a
Step 3/3 : CMD [ "python3", "hello_world.py"]
 ---> Using cache
 ---> ddde8faaa056
Successfully built ddde8faaa056
Successfully tagged python_hello_world:latest
Running Application: python_hello_world
docker run python_hello_world
Hello World!
```

#### Note: The last line is the output from the application

### Application: python_http_request

```make
make http_request

```docker
Building Dockerfile for Application: python_http_request
docker build --tag python_http_request --file=python_http_request/Dockerfile .
Sending build context to Docker daemon  71.17kB
Step 1/4 : FROM python:rc-alpine3.10
 ---> e528b163d7d0
Step 2/4 : RUN pip3 install requests
 ---> Using cache
 ---> aa67ad58a9d1
Step 3/4 : ADD python_http_request/http_request.py /
 ---> Using cache
 ---> 1bdc832b6de2
Step 4/4 : CMD [ "python3", "http_request.py"]
 ---> Using cache
 ---> ccbb6df85ef8
Successfully built ccbb6df85ef8
Successfully tagged python_http_request:latest
Running Application: python_http_request
docker run python_http_request
The HTTP response code from https://www.google.com is 200
```

#### The last line is the output from the application
