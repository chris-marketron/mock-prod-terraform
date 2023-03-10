#!/bin/bash

# Added some sleep because the app and load balancers take some time to initialize
sleep 60

URL=$(kubectl get ingress -n 2048-game | tail -1 | awk '{print $4}')
export BASE_URL=$URL

echo "BASE_URL: $BASE_URL"
# add curl test
curl http://$BASE_URL
