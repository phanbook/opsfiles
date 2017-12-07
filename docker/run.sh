#!/bin/bash
pwd

#cp ./docker/variables.env .env
docker-compose config
docker-compose build
docker-compose up -d

#Installing dependencies
docker-compose up composer