# 1.21GBのイメージサイズになる
# FROM node:16-bullseye-slim
# WORKDIR /app
# COPY . /app
# RUN apt-get update && apt-get upgrade -y && \
#     apt-get install -y \
#       build-essential \
#       git \
#       libpng-dev \
#       libvips-dev && \
#     yarn global add gatsby-cli && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*
# EXPOSE 8000
# RUN yarn install && yarn cache clean

# 885MBのイメージサイズになる
FROM node:16.13.2-bullseye-slim
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
      build-essential \
      git \
      libpng-dev \
      libvips-dev && \
    yarn global add gatsby-cli && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8000