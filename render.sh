#!/usr/bin/env bash

docker run --rm -v $(pwd)/src:/work -v $(pwd)/out:/out toyland/bookdown:latest ./run.sh
