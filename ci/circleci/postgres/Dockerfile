#
# Derives from the base circleci postgres image, but adds a script which
# installs hstore and uuid-ossp extensions into `template` and `$POSTGRES_DB`
#

FROM circleci/postgres:9.6.6

COPY add-extensions.sh /docker-entrypoint-initdb.d/add-extensions.sh