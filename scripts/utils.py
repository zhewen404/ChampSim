from scipy.stats import gmean

reduction_map = {
    'ipc': lambda list_ : gmean(list_),
    'l1d_mr': lambda list_: sum(list_) / len(list_),
    'l2_mr': lambda list_: sum(list_) / len(list_),
    'llc_mr': lambda list_: sum(list_) / len(list_),
}

prune_map = {
    'num_core': lambda line: int(line.split('Number of CPUs: ')[-1]),
    'ipc': lambda line: float(line.split(' instructions')[0].split('IPC: ')[-1]),
    'l1d_mr': lambda line: float(line.split('MISS:      ')[-1])/float(line.split('  HIT')[0].split('ACCESS:     ')[-1])*100,
    'l2_mr': lambda line: float(line.split('MISS:      ')[-1])/float(line.split('  HIT')[0].split('ACCESS:     ')[-1])*100,
    'llc_mr': lambda line: float(line.split('MISS:      ')[-1])/float(line.split('  HIT')[0].split('ACCESS:     ')[-1])*100,
}

pattern_map = {
    'num_core': 'Number of CPUs: \d+',
    'ipc': "CPU \d{1,2} cumulative IPC: ",
    'l1d_mr': 'cpu\d{1,2}_L1D TOTAL\s+ACCESS:\s+\d+\s+HIT:\s+\d+\s+MISS:\s+\d+',
    'l2_mr': 'cpu\d{1,2}_L2C TOTAL\s+ACCESS:\s+\d+\s+HIT:\s+\d+\s+MISS:\s+\d+',
    'llc_mr': 'LLC TOTAL\s+ACCESS:\s+\d+\s+HIT:\s+\d+\s+MISS:\s+\d+',
}