from numpy import std
import ast
import argparse


def meand_std(d):
    mean = sum(d)/len(d)
    std_ = std(d)
    return mean, std_


#  example: path = 'rl-baselines3-zoo/reports/report_sac-Pendulum-v0.txt'
my_parser = argparse.ArgumentParser()
my_parser.add_argument("-p", "--path", type=str)
args = my_parser.parse_args()
path = args.path

file1 = open(path, 'r')
durations = []
itsec = []
lines = file1.readlines()
for line in lines:
    d = ast.literal_eval(line)
    durations.append(d['duration'])
    itsec.append(d['iters/sec'])
m1, s1 = meand_std(durations)
m2, s2 = meand_std(itsec)
print('Mean duration: {}+{}'.format(m1, s1))
print('Mean iters/sec: {}+{}'.format(m2, s2))


