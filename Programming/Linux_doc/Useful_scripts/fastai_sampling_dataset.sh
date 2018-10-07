#!/bin/bash

mkdir -p data/dogscats_sample/{valid,train}/{cats,dogs}

shuf -n 200 -e data/dogscats/train/cats/* | xargs -i cp {} data/dogscats_sample/train/cats
shuf -n 200 -e data/dogscats/train/dogs/* | xargs -i cp {} data/dogscats_sample/train/dogs
shuf -n 100 -e data/dogscats/valid/cats/* | xargs -i cp {} data/dogscats_sample/valid/cats
shuf -n 100 -e data/dogscats/valid/dogs/* | xargs -i cp {} data/dogscats_sample/valid/dogs