from collections import OrderedDict
import argparse
import re
from scipy.stats import gmean
from utils import reduction_map, prune_map, pattern_map

def construct_argparser():
    parser = argparse.ArgumentParser(description='writeStats')
    parser.add_argument('-f',
                        '--file',
                        help='file to parse results',
                        default='out/results_4x4/mix1-cmp_4x4.txt',
                        )
    return parser

def get_list(file, metric):
    pattern = pattern_map[metric]
    ri_pattern = 'Region of Interest Statistics'

    region_interest_hit = False
    ipc_list = []
    with open(file, 'r') as searchfile:
        for line in searchfile:
            if re.match(ri_pattern, line):
                region_interest_hit = True
            if re.match(pattern, line):
                if region_interest_hit:
                    prune_func = prune_map[metric]
                    res = prune_func(line)
                    ipc_list.append(res)
    return ipc_list

if __name__ == "__main__":
    parser = construct_argparser()
    args = parser.parse_args()

    metric = 'ipc'
    ipc_list = get_list(args.file, metric)
    reduction_func = reduction_map[metric]
    ipc_gm = reduction_func(ipc_list)
    print(f'ipc_gm={ipc_gm}')

    metric = 'l1d_mr'
    l1d_mr_list = get_list(args.file, metric)
    print(l1d_mr_list)
    reduction_func = reduction_map[metric]
    l1d_mr_gm = reduction_func(l1d_mr_list)
    print(l1d_mr_gm)

    print('done')