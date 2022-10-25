#!/bin/bash

cd /opt/registry
docker compose up -d
docker exec registry-web-1 /opt/registry/auth/auth-gen.sh
