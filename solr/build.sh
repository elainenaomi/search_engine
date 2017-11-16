#!/bin/bash
docker run -d -p 8983:8983 --name sunspot -v $HOME/dev/search_engine/solr/sunspot:/sunspot  solr:7.1.0 solr-precreate development /sunspot