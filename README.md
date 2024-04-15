# GIC Deployment 1 - ChatHub

## Description

This repository contains the first deployment of ChatHub. It uses Docker and K3s to deploy the application services.

**Course:** Management of Computation Infrastructures (2023/2024).

## Contents

- `docker/`: Dockerfiles to build the Docker images.
- `k3s/`: Kubernetes manifests to deploy the application.
- `src/`: source code of the services.
- `scripts/`: shell scripts to automate the deployment process.
    - Important: `cd` to the `scripts` directory before running the scripts.
    - The `all.sh` script will run all the scripts in the correct order.
    - Run other scripts individually if needed.
- `config`: configuration to access cluster in OpenLens.
- `hosts`: information you need to add in your `/etc/hosts` file, to be able to access the services.
- `Vagrantfile`: configuration of the Vagrant VM.

## Authors

- Diogo Paiva, 103183
- Guilherme Antunes, 103600
- João Fonseca, 103154
