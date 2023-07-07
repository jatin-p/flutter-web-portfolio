# Stage 1 Create build env and build from source
FROM ubuntu:latest AS build-env

RUN apt-get update 
RUN apt-get install -y curl git wget zip unzip xz-utils python3
RUN apt-get clean

# change to stable or main branch by adding "--branch beta" before .git link
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# This command should resolves any issues/missing dependencies  
RUN flutter doctor -v

# stable is fetched by default, switch to beta or main here or when fetching via git
RUN flutter channel stable
RUN flutter upgrade

RUN mkdir /app/
COPY . /app/
WORKDIR /app/
# other flags to use here:  https://docs.flutter.dev/platform-integration/web/building
RUN flutter build web --release

# Stage 2: Install NGINX, copy from build/web folder to the nginx/html folder 
FROM nginx:latest
COPY --from=build-env /app/build/web /usr/share/nginx/html