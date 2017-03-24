#!/bin/bash

DIR=$(cd $(dirname $0) && pwd)
docker run -it --rm -v $DIR:/root/shared ruby bash
