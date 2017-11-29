#!/bin/bash
set -e

function install_extensions() {
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$1" <<-EOSQL
        create extension hstore;
        create extension "uuid-ossp";
EOSQL
}

install_extensions template1
install_extensions $POSTGRES_DB