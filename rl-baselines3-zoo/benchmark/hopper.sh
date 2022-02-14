#!/usr/bin/env bash

for s in 1 2 3 4 5; do
    python train.py --algo sac --env Hopper-v3 --stop-value 3000. --seed "$s"
    python train.py --algo td3 --env Hopper-v3 --stop-value 3000. --seed "$s"
done
