#!/bin/bash
VER=0.2
docker build . -t data-science:latest -t data-science:$VER -t asdlfkj31h/data-science:latest -t asdlfkj31h/data-science:$VER
#docker push asdlfkj31h/data-science:latest
#docker push asdlfkj31h/data-science:$VER

