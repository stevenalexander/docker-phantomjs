FROM buildpack-deps:jessie-curl

MAINTAINER Steven Alexander "steven.william.alexander@googlemail.com"

ENV PHANTOMJS_VERSION 2.0

# Install dependencies
RUN apt-get update && \
	apt-get install -y git-core build-essential g++ flex bison gperf ruby perl \
    libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
    libpng-dev libjpeg-dev python libx11-dev libxext-dev

# Install PhantomJS
RUN git clone https://github.com/ariya/phantomjs.git
RUN cd phantomjs && \
    git checkout ${PHANTOMJS_VERSION} && \
    ./build.sh --confirm
