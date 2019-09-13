FROM python:2-alpine

WORKDIR /app

ENV PHP_PORT 9000
ENV IDE_PORT 9001

RUN pip install --no-cache-dir komodo-python-dbgp

CMD ["sh", "-c", "pydbgpproxy -d 0.0.0.0:$PHP_PORT -i 0.0.0.0:$IDE_PORT"]
