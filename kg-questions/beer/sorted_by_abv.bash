#!/usr/bin/bash

##### Task 4 - Sort on ABV
# Print All Fields
echo "Printing all fields sorted by ABV:"
curl -s https://s3-eu-west-1.amazonaws.com/kg-it/devopsTest/api-punkapi-com-v2-beers.json | jq -s -c '.[] | sort_by(.abv)'
sleep 5

# Print only Name, ABV sorted by ABV
echo "Printing only NAme,ABV sorted by ABV:"
curl -s https://s3-eu-west-1.amazonaws.com/kg-it/devopsTest/api-punkapi-com-v2-beers.json | jq -j '.[] | .name, ",", .abv, "\n"' | sort -t "," -n -k2

exit 0