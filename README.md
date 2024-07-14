# Orchestration for LoL Wiki Parser

Disclaimer: Intended for demo purposes only.

## Prerequisites

- [docker](https://archlinux.org/packages/extra/x86_64/docker/)
- [helm](https://archlinux.org/packages/extra/x86_64/helm/)
- [just](https://archlinux.org/packages/extra/x86_64/just/)
- [k3d](https://aur.archlinux.org/packages/rancher-k3d-bin)
- [tilt](https://aur.archlinux.org/packages/tilt-bin)

## Running the app

- run `just init`
- run `just dev`
- go to `http://localhost:8001/login`
  - log in using the configured credentials in [infra/values.yaml](infra/values.yaml)
  - move to "Access Keys" and create a new access key (ok to use default values)
  - update [services/values.yaml](services/values.yaml)
- go to `http://localhost:10350/`
  - click the trigger for "lol-wiki-parser"
