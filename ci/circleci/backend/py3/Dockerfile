FROM circleci/python:3.7.3-stretch 
# we use slim-stretch for our backend images, but circle-ci does not have it!

USER root

RUN \
    apt-get update \
&&  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
&&  sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" > /etc/apt/sources.list.d/PostgreSQL.list' \
&&  apt-get update \
&&  apt-get install -y apt-utils \
&&  apt-get install -y libopenblas-dev liblapack-dev libpq-dev libffi-dev libgeos-dev \
&&  apt-get install -y postgresql-client-10 \
&&  pip install pipenv

USER circleci

CMD ["/bin/sh"]