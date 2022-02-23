FROM cimg/python:3.10.2

USER root

# libgomp1 -> base library for `onnxyruntime` py library used by core (https://github.com/microsoft/onnxruntime)

RUN \
    apt-get update \
&&  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
&&  sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main" > /etc/apt/sources.list.d/PostgreSQL.list' \
&&  apt-get update \
&&  apt-get install -y apt-utils \
&&  apt-get install -y file binutils libgeos-dev gcc libpq-dev libjpeg-dev zlib1g-dev libtiff5-dev \
&&  apt-get install -y libgomp1  \
&&  apt-get install -y postgresql-client-12 \
&&  pip install --upgrade pip setuptools wheel \
&&  pip install pipenv

USER circleci

CMD ["/bin/sh"]