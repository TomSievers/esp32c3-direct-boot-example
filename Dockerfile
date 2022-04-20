FROM node:17-bullseye-slim

RUN apt-get update
RUN npm install --global xpm@latest
RUN XPACKS_REPO_FOLDER=/opt xpm install --global @xpack-dev-tools/riscv-none-embed-gcc@latest
RUN apt-get install -y cmake make

ENV PATH="${PATH}:/opt/@xpack-dev-tools/riscv-none-embed-gcc/10.2.0-1.2.1/.content/bin"

COPY internal_build_docker.sh /build.sh

RUN chmod +x /build.sh

CMD [ "./build.sh" ]