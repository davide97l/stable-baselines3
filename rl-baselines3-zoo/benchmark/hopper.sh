#!/usr/bin/env bash

seeds=(1 2 3 4 5)
algo=('sac' 'td3')

for a in "${algo[@]}"; do
  for s in "${seeds[@]}"; do
      python train.py --algo "$a" --env Hopper-v3 --stop-value 3000. --seed "$s"
  done
done
