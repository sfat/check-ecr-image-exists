#!/bin/sh -l

image_exists=$(go run ecr.go -region=$1 -repository-name=$2 -tag=$3 -access-key-id=$4 -secret-access-key=$5 )
echo "::set-output name=image_exists::$image_exists"
