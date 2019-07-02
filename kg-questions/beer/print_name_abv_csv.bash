#!/usr/bin/bash

##### Task 2 - Print Name,ABV
echo "Printing Name,ABV :"
yum -y install jq;
curl -s https://s3-eu-west-1.amazonaws.com/kg-it/devopsTest/api-punkapi-com-v2-beers.json | jq -j '.[] | .name, ",", .abv, "\n"'

exit 0

