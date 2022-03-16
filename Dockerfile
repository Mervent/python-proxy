FROM python:3.7-buster

WORKDIR /build
COPY . .

RUN pip3 install --upgrade --no-cache-dir pip
RUN pip3 install -r requirements.txt

RUN pip3 install .

ENTRYPOINT ["pproxy"]