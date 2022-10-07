#!/usr/bin/env bash
cd "$(dirname "$0")"
docker run \
  --rm -it \
  --volume $(pwd):/workspace \
  --workdir /workspace \
  --user "$(id -u):$(id -g)" \
  gcr.io/flame-public/buildbuddy-ci-runner:v2.2.9 \
  bazelisk \
  --output_base=./out \
  run //...
