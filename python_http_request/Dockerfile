FROM python:rc-alpine3.10
RUN pip3 install requests
ADD python_http_request/http_request.py /
CMD [ "python3", "http_request.py"]