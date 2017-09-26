FROM ubuntu:14.04

RUN apt-get update && \
  apt-get install -y --no-install-recommends python-setuptools python-m2crypto python-apsw libpython2.7-dev libxslt-dev

ADD "http://dl.acestream.org/linux/acestream_3.1.16_ubuntu_14.04_x86_64.tar.gz" .
RUN tar xvzf acestream_3.1.16_ubuntu_14.04_x86_64.tar.gz && \
  mv acestream_3.1.16_ubuntu_14.04_x86_64 /opt/acestream

CMD ["/opt/acestream/start-engine", "--client-console"]

