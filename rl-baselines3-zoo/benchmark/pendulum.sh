#!/usr/bin/env bash

seeds=(1 2 3 4 5)
algo=('sac')

for a in "${algo[@]}"; do
  for s in "${seeds[@]}"; do
      python train.py --algo "$a" --env Pendulum-v0 --stop-value -250. --seed "$s"
  done
done
