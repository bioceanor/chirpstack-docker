#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create role chirpstack_ns_us with login password 'chirpstack_ns_us';
    create database chirpstack_ns_us with owner chirpstack_ns_us;
EOSQL
