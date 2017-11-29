FROM circleci/python:2.7.14-stretch

USER root

RUN  apt-get update \
  && apt-get install apt-utils \
  && apt-get install -y gfortran libopenblas-dev liblapack-dev libpq-dev libffi-dev libgeos-dev \
  && apt-get install -y postgresql-client-9.6

USER circleci

CMD ["/bin/sh"]


# to build:
#    docker build -t {short-image-name} .
#
#    docker run -it {short-image-name}
#
    #    docker tag {short-image-name} scantrust/test-repo:latest
#    docker push scantrust/test-repo:latest