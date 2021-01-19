#!/usr/bin/python

import os
import sys

r1 = sys.argv[1]
r2 = sys.argv[2]

print("python script triggered with {} and {}".format(r1, r2))

print("files in 1st repo:")
for root, d_names, f_names in os.walk(r1):
	print(f_names)
	#for file in f_names: print (f_names)

print("files in 2nd repo:")
for root, d_names, f_names in os.walk(r2):
	print(f_names)
	#for file in f_names: print (f_names)