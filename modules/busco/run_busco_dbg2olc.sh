#!/bin/bash
set -vex

export BUSCO_CONFIG_FILE=/its1/GB_BT2/jianzuoyi/workspace/pepper/modules/busco/config.ini
export PATH=/opt/bio/augustus-3.2.3/bin/:$PATH
export PATH=/opt/bio/augustus-3.2.3/scripts/:$PATH
export AUGUSTUS_CONFIG_PATH=/its1/GB_BT2/jianzuoyi/workspace/pepper/modules/biosoft/busco/config/augustus/config/

python /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/biosoft/busco/scripts/run_BUSCO.py \
-i /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/consensus/split/final_assembly.fasta \
-o zunla_dbg2olc \
-l /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/biosoft/busco/OrthoDB/embryophyta_odb9 \
-m genome \
-c 32 \
-f \
-r

touch /its1/GB_BT2/jianzuoyi/workspace/pepper/output/busco/run_busco.sh.done
