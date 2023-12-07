# ベースイメージの指定
FROM node:18.16.0-slim

# 非対話型の設定
ARG DEBIAN_FRONTEND=noninteractive

# 必要なパッケージのインストールとロケールの設定
RUN apt-get update && \
  apt-get install -y locales curl && \
  locale-gen ja_JP.UTF-8 && \
  rm -rf /var/lib/apt/lists/*

# 環境変数の設定
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo

# ワークディレクトリの設定
WORKDIR /app
