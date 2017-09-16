FROM node:alpine

# Install Dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache git

RUN npm install apidoc -g && \
	npm install http-server -g

# Clone Services
RUN git clone https://github.com/wolfbeacon/wolfbeacon-core-api && \
	git clone https://github.com/wolfbeacon/wolfbeacon-hackalist-api

# Generate Docs
RUN apidoc \
    -i wolfbeacon-core-api/api/views/ \
    -i wolfbeacon-hackalist-api/src/main/java/com/wolfbeacon/api/

# Serve static docs over http-server
CMD ["http-server", "./doc"]
