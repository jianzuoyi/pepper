#!/bin/bash
#$ -cwd
#$ -S /bin/bash

# source build
cd /its1/GB_BT2/jianzuoyi/biosoft/FALCON-integrate
source env.sh
cd -

fc_ovlp_stats --fofn ../1-preads_ovl/merge-gather/las.fofn > ovlp.stats