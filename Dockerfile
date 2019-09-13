FROM python:2-alpine

WORKDIR /app

RUN pip install --no-cache-dir komodo-python-dbgp

CMD ["pydbgpproxy", "-d", "0.0.0.0:9000", "-i", "0.0.0.0:9001"]

EXPOSE 9000 9001
