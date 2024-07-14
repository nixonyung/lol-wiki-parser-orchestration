#
# infra
#

k8s_yaml(helm("infra"))

k8s_resource("minio",
    port_forwards=[
        port_forward(name="console", local_port=8001, container_port=9001),
    ],
)

#
# deploy
#

docker_build(
    "lol-wiki-parser",
    dockerfile="src/lol-wiki-parser/Dockerfile",
    context="src/lol-wiki-parser",
)

k8s_yaml(helm("services"))

k8s_resource("lol-wiki-parser", trigger_mode=TRIGGER_MODE_MANUAL)