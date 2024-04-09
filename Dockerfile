FROM node:20-slim
RUN apt-get update && apt-get install --no-install-recommends -y \
    gpg \
    gnupg \
    gpg-agent \
    socat \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
USER node
RUN mkdir /home/node/app
WORKDIR /home/node/app
CMD ["/home/node/app/.docker/node/start-dev.sh"]