from collections import OrderedDict
import argparse
import re
from scipy.stats import gmean
from utils import reduction_map, prune_map, pattern_map

def construct_argparser():
    parser = argparse.ArgumentParser(description='writeStats')
    parser.add_argument('-f',
                        '--files',
                        nargs='+',
                        help='file to parse results',
                        default=[\
                            'out/results_8x8/mix1-cmp_8x8.txt', \
                            'out/results_8x8/mix1-cmp_8x8_l.txt', \
                            ]
                        )
    return parser

def get_list(file, metric, override_ri=False):
    pattern = pattern_map[metric]
    ri_pattern = 'Region of Interest Statistics'

    region_interest_hit = False
    ipc_list = []
    with open(file, 'r') as searchfile:
        for line in searchfile:
            if re.match(ri_pattern, line):
                region_interest_hit = True
            if re.match(pattern, line):
                if region_interest_hit or override_ri:
                    prune_func = prune_map[metric]
                    res = prune_func(line)
                    ipc_list.append(res)
    return ipc_list

if __name__ == "__main__":
    parser = construct_argparser()
    args = parser.parse_args()

    ipc_arr = []
    l1d_mr_arr = []
    l2_mr_arr = []
    llc_mr_arr = []

    for file_ in args.files:
        print('-----file-----')
        num_core = get_list(file_, 'num_core', True)[0]
        print(f'*** num core={num_core}')

        metric = 'ipc'
        ipc_list = get_list(file_, metric)
        assert len(ipc_list) == num_core, 'missing ipc data'
        reduction_func = reduction_map[metric]
        ipc_gm = reduction_func(ipc_list)
        print(f'ipc_gm={ipc_gm:.3f}')
        ipc_arr.append(ipc_gm)

        metric = 'l1d_mr'
        l1d_mr_list = get_list(file_, metric)
        assert len(l1d_mr_list) == num_core, 'missing l1d mr data'
        reduction_func = reduction_map[metric]
        l1d_mr_gm = reduction_func(l1d_mr_list)
        print(f'l1d_mr_gm={l1d_mr_gm:.2f}%')
        l1d_mr_arr.append(l1d_mr_gm)

        metric = 'l2_mr'
        l2_mr_list = get_list(file_, metric)
        assert len(l2_mr_list) == num_core, 'missing l2 mr data'
        reduction_func = reduction_map[metric]
        l2_mr_gm = reduction_func(l2_mr_list)
        print(f'l2_mr_gm={l2_mr_gm:.2f}%')
        l2_mr_arr.append(l2_mr_gm)

        metric = 'llc_mr'
        llc_mr_list = get_list(file_, metric)
        while len(llc_mr_list) < num_core: 
            llc_mr_list.append(0)
            # print(llc_mr_list)
        assert len(llc_mr_list) == num_core, f'missing llc mr data, {len(llc_mr_list)} != {num_core}'
        reduction_func = reduction_map[metric]
        llc_mr_gm = reduction_func(llc_mr_list)
        print(f'llc_mr_gm={llc_mr_gm:.2f}%')
        llc_mr_arr.append(llc_mr_gm)

    print("\nsummary:")
    speedup_ipc = [i / ipc_arr[0] for i in ipc_arr]
    print(f'ipc: {speedup_ipc}')
    speedup_l1 = [i / l1d_mr_arr[0] for i in l1d_mr_arr]
    print(f'l1mr: {speedup_l1}')
    speedup_l2 = [i / l2_mr_arr[0] for i in l2_mr_arr]
    print(f'l2mr: {speedup_l2}')
    speedup_llc = [i / llc_mr_arr[0] for i in llc_mr_arr]
    print(f'llcmr: {speedup_llc}')

    print('done')