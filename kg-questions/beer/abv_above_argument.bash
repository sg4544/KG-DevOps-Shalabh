#!/usr/bin/bash

##### Task 3 - ABV Condition

echo "Printing Names with ABV > argument:"
# Hardcoded value as 6
curl -s https://s3-eu-west-1.amazonaws.com/kg-it/devopsTest/api-punkapi-com-v2-beers.json | jq -j '.[] | select(.abv >=6) | .name, ",", .abv, "\n"'
sleep 5

# Parameter as $1
echo "Printing Names with ABV > $1:"
curl -s https://s3-eu-west-1.amazonaws.com/kg-it/devopsTest/api-punkapi-com-v2-beers.json | jq --arg avar "$1" -j '.[] | select(.abv >=.[$avar]) | .name, ",", .abv, "\n"'


exit 0