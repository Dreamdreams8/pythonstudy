# coding=utf-8

import pickle
from com.jd.pbs.simulation import config

output_dir = config.output_dir
simulation_name = 'simulation_1671.dat'

simulation_results = pickle.load(open(output_dir + simulation_name, 'rb'))
print simulation_results.keys()
print (simulation_results['1003979']).sku_name
print (simulation_results['1003979']).calc_kpi()