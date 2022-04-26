from scipy.stats import gmean

reduction_map = {
    'ipc': lambda list_ : gmean(list_),
    'l1d_mr': lambda list_: sum(list_) / len(list_),
}

prune_map = {
    'ipc': lambda line: float(line.split(' instructions')[0].split('IPC: ')[-1]),
    'l1d_mr': lambda line: float(line.split('MISS:      ')[-1])/float(line.split('  HIT')[0].split('ACCESS:     ')[-1])*100,

}

pattern_map = {
    'ipc': "CPU \d{1,2} cumulative IPC: ",
    'l1d_mr': 'cpu\d{1,2}_L1D TOTAL\s+ACCESS:\s+\d+\s+HIT:\s+\d+\s+MISS:\s+\d+',

}