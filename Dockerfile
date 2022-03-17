FROM python:3.7-slim

WORKDIR /build
COPY . .

RUN pip3 install --upgrade --no-cache-dir pip
RUN pip3 install -r requirements.txt

RUN pip3 install .

USER root

ENTRYPOINT ["pproxy"]