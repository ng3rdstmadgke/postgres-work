#!/bin/bash


CONTAINER_NAME=${PROJECT_NAME}-sample-postgresql
PGPASSWORD=root1234 psql -U app -h ${CONTAINER_NAME} -d sample -p 5432 -f $PROJECT_DIR/docs/postgresql/resources/initial_data.sql