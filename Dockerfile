FROM node:alpine

# Install Dependencies
RUN apk update && apk upgrade && \
	apk add --no-cache git

# Create work directory
RUN mkdir /src/
WORKDIR /src/
ADD . /src/

# Install npm dependencies
RUN npm install -g apidoc && \
	npm install express --save && \
	npm install serve-static --save

# Clone services
RUN git clone https://github.com/wolfbeacon/wolfbeacon-core-api && \
	git clone https://github.com/wolfbeacon/wolfbeacon-hackalist-api

# Generate docs
RUN apidoc \
    -i wolfbeacon-core-api/api/views/ \
    -i wolfbeacon-hackalist-api//src/main/kotlin/wolfbeacon/hackalist/

EXPOSE 3000

# Serve static docs over server
CMD ["node", "server.js"]
