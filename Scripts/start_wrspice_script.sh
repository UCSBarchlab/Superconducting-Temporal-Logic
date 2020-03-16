#!/bin/bash

# run WRSPICE commands to start modeling
# replace the 2 path variables with relevant paths

export wrspice=/usr/local/xictools/wrspice/bin/wrspice

$wrspice -m /usr/local/xictools/wrspice.current/devkit/examples/jj/module_dist/jj.so
