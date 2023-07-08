# Sources for original location Dockerfile was found
# blog.logrocket.com/containerizing-flutter-web-apps-with-docker/
# https://medium.com/@kevinwilliams.dev/building-a-flutter-web-container-3b13f4b2bd0c
# Stage 1 Create build env and build from source
FROM debian:bookworm AS build-env

RUN apt-get update
# command line tools flutter requires
# RUN apt-get install -y bash curl file git wget zip unzip xz-utils libglu1-mesa python3
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3 sed
# Linux Desktop tools might be necessary
# RUN apt-get install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev
RUN apt-get clean

# change to main branch by changing "--branch beta" before .git link or stable by removing it
RUN git clone --branch beta https://github.com/flutter/flutter.git /usr/local/flutter

ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# This command should resolves any issues/missing dependencies
# RUN flutter precache
# RUN flutter doctor -v

# # stable is fetched by default, switch to beta or main here or when fetching via git
# RUN flutter channel beta
RUN flutter upgrade

RUN mkdir /app/
COPY . /app/
WORKDIR /app/
# other flags to use here:  https://docs.flutter.dev/platform-integration/web/building
RUN flutter build web --release

# Stage 2: Install NGINX, copy from build/web folder to the nginx/html folder 
FROM nginx:bookworm
COPY --from=build-env /app/build/web /usr/share/nginx/html