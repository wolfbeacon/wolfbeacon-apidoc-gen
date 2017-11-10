# WolfBeacon API Docs Generator

WolfBeacon has multiple services exposing different endpoints which make up the WolfBeacon API together. Documentation for every service is written is written using [apidoc](https://apidocjs.com).

This service aggregates API Documentation written in the form of [apidoc](http://apidocjs.com) strings across these WolfBeacon microservices and serves them statically via a dead simple [Node](https://nodejs.org/en/)-[Express](https://expressjs.com/) server in one, well-formatted location.

## Building and Running via Docker

* `sudo docker build -t wolfbeacon-apidoc-gen .`
* `sudo docker run -p 3000:3000 wolfbeacon-apidoc-gen` 

Following this, the docs should be visible at *yourhost:3000*
