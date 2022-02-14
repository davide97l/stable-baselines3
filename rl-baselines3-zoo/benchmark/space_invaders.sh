#!/usr/bin/env bash

for s in 1 2 3 4 5; do
  python train.py --algo ppo --env SpaceInvadersNoFrameskip-v4 --stop-value 750. --seed "$s"  -f /mnt/lustre/liudavide/log
  python train.py --algo dqn --env SpaceInvadersNoFrameskip-v4 --stop-value 750. --seed "$s"  -f /mnt/lustre/liudavide/log
done
