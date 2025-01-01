#!/bin/bash

# Project root directory
PROJECT_ROOT="spring-boot-microservices"

# Microservices list
MICROSERVICES=("user-service" "order-service")

# Create root directory
mkdir -p $PROJECT_ROOT

# Create microservice directories
for SERVICE in "${MICROSERVICES[@]}"
do
  echo "Creating directory structure for $SERVICE"

  # Create base directory
  mkdir -p $PROJECT_ROOT/$SERVICE

  # Create src directory structure
  mkdir -p $PROJECT_ROOT/$SERVICE/src/main/java/com/example/$SERVICE/entity
  mkdir -p $PROJECT_ROOT/$SERVICE/src/main/java/com/example/$SERVICE/controller
  mkdir -p $PROJECT_ROOT/$SERVICE/src/main/java/com/example/$SERVICE/repository
  mkdir -p $PROJECT_ROOT/$SERVICE/src/main/resources
  mkdir -p $PROJECT_ROOT/$SERVICE/src/test/java/com/example/$SERVICE

  # Create placeholder files for essential files
  touch $PROJECT_ROOT/$SERVICE/src/main/resources/application.yml
  touch $PROJECT_ROOT/$SERVICE/pom.xml
  touch $PROJECT_ROOT/$SERVICE/Dockerfile
  touch $PROJECT_ROOT/$SERVICE/README.md

 done

