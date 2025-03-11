#!/usr/bin/env bash

TAG_WITHOUT_V=0.0.7
#TEST=$(git tag -l --format='%(contents)' $TAG_WITHOUT_V)
if [[ -z $(git tag -l --format='%(contents)' $TAG_WITHOUT_V) ]]; then
  TAG_MESSAGE=$(git log -1 --pretty=%B)
else
  TAG_MESSAGE=$(git tag -l --format='%(contents)' $TAG_WITHOUT_V)
fi
echo -------
#echo $TEST
echo $TAG_MESSAGE