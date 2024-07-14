PROJECT_NAME := "lol-wiki-parser"

init:
    k3d cluster create {{PROJECT_NAME}} --registry-create {{PROJECT_NAME}}-registry

dev:
    tilt up --stream