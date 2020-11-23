#!/bin/bash
VER=0.2
docker build . -t asdlfkj31h/data-science:latest -t asdlfkj31h/data-science:$VER
docker push asdlfkj31h/data-science:latest
docker push asdlfkj31h/data-science:$VER

