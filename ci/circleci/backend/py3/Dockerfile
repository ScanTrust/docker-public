FROM circleci/python:3.6.4-stretch

USER root

RUN apt-get update \
&&  apt-get install -y apt-utils \
&&  apt-get install -y libopenblas-dev liblapack-dev libpq-dev libffi-dev libgeos-dev \
&&  apt-get install -y postgresql-client-9.6

USER circleci

CMD ["/bin/sh"]