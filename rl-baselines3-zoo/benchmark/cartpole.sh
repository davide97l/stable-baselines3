#!/usr/bin/env bash

seeds=(1 2 3 4 5)
algo=('dqn' 'ppo')

for a in "${algo[@]}"; do
  for s in "${seeds[@]}"; do
      python train.py --algo "$a" --env CartPole-v1 --stop-value 195. --seed "$s"
  done
done
