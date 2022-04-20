#! /bin/sh

docker build . -t esp32c3-build-riscv

docker run --rm -t --mount type=bind,source="$(pwd)",target=/build esp32c3-build-riscv 