FROM node:lts

# Development environment installation
## Set environment variables

## Install dependencies
### Install apt-get packages
RUN apt-get update && \
    apt-get install -y build-essential cmake curl git make python3

## Install global npm packages
RUN npm install -g typescript@5.6.3

## Verify installations
RUN /bin/bash -c "node -v && npm -v && tsc -v && git --version"
