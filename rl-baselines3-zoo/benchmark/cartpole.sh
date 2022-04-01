#!/usr/bin/env bash

for s in 1 2 3 4 5; do
    python train.py --algo dqn --env CartPole-v1 --stop-value 195. --seed "$s"
    python train.py --algo ppo --env CartPole-v1 --stop-value 195. --seed "$s"
done
