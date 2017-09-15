FROM node:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# Clone core API
RUN git clone https://github.com/wolfbeacon-core-api

# Cloning hackalist API
RUN git clone https://github.com/wolfbeacon-hackalist-api

# Generate Docs
RUN apidoc \
	-i wolfbeacon-core-api/api/views/ \
	-i wolfbeacon-hackalist-api/src/main/java/com/wolfbeacon/api/

RUN mkdir /src/
WORKDIR /src/
ADD . /src/

# Install https://www.npmjs.com/package/http-server
RUN  npm install http-server -g

# Serve static docs over http-server
CMD ["http-server", "./doc"]
