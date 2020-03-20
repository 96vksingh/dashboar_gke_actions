FROM nginx

# RUN uname-a

# RUN apt-get install wget

COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html



# FROM ubuntu:16.04

# # 80 = HTTP, 443 = HTTPS, 3000 = MEAN.JS server, 35729 = livereload, 8080 = node-inspector
# EXPOSE 80 4000

# # Install Utilities
# RUN apt-get update -q  \
#  && apt-get install -yqq \
#  curl \
#  git \
#  ssh \
#  gcc \
#  make \
#  build-essential \
#  libkrb5-dev \
#  sudo \
#  vim \
#  net-tools \
#  apt-utils \
#  supervisor \
#  && apt-get clean \
#  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# # Install nodejs
# RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
# RUN sudo apt-get install -yq nodejs \
#  && apt-get clean \
#  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# # Install and copy Nginx
# RUN apt-get update \
#     && apt-get install -y nginx

# COPY default.conf /etc/nginx/conf.d/default.conf
# COPY index.html /usr/share/nginx/html
# RUN /etc/init.d/nginx start





# FROM node:10-alpine

# # RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# WORKDIR /home/node/app

# # COPY package*.json ./

# # USER node

# RUN npm install xterm

# COPY --chown=node:node . .

# EXPOSE 8080

# CMD [ "node", "app.js" ]