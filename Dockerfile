FROM python:3.12.4-bookworm

COPY . /container-transform

RUN \
	cd /container-transform && \
	python /container-transform/setup.py install

WORKDIR /data
ENTRYPOINT ["/usr/local/bin/container-transform"]
