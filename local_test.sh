#!/bin/bash
docker  build -t rest-demo-services:test .
docker run --rm -p 3000:3000 -ti rest-demo-services:test