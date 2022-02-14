#!/usr/bin/env bash

for s in 1 2 3 4 5; do
  python train.py --algo sac --env Pendulum-v0 --stop-value=-250. --seed "$s"
done
