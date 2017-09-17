# WolfBeacon API Docs Generator

WolfBeacon has a bunch of services exposing different endpoints which make up the WolfBeacon API together.

This service aggregates API Documentation written in the form of [apidoc](http://apidocjs.com) strings across WolfBeacon microservices and serves them statically via a dead simple [Node](https://nodejs.org/en/)/[Express](https://expressjs.com/) server in one, well-formatted location.

## Building and Running via Docker

* `sudo docker build -t wolfbeacon-apidoc-gen .`
* `sudo docker run -p 3000:3000 wolfbeacon-apidoc-gen` 

Following this, the docs should be visible at *<your-host>:3000*
