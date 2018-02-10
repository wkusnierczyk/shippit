#!/usr/bin/env bash

echo "Shipping shippit..."

# no no no
# sleep 60

cd shippit
git push
git push --tags

echo "Shipped"
