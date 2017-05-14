FROM alpine
MAINTAINER Paul-Christian Volkmer <mail@pcvolkmer.de>

# Install packages
RUN apk update && apk add curl

# Install cloudfoundry-cli
RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
RUN mv cf /usr/local/bin
