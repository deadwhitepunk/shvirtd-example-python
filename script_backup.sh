#!/bin/bash
docker run \
    --rm --entrypoint "" \
    -v /opt/backup/:/backup \
    --link="shvirtd-example-python-db-1:alias" \
    --network=shvirtd-example-python_backend \
    schnitzler/mysqldump \
    mysqldump --opt -h alias -u root -p"YtReWq4321" "--result-file=/backup/dumps.sql" virtd