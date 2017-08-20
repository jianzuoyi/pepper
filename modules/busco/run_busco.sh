#!/bin/bash
set -vex

# --------------------------------------------------------------------------------------
# Author:      Zuoyi Jian
# Email:       jianzuoyi@qq.com
# Description: Assessment of genome assembly using BUSCO system
# Date:        2017-07-05
# Version:     1.0
# --------------------------------------------------------------------------------------
export BUSCO_CONFIG_FILE=/its1/GB_BT2/jianzuoyi/projects/pepper/modules/busco/config.ini
#export PATH=/opt/bio/augustus-3.2.3/bin/:$PATH
#export PATH=/opt/bio/augustus-3.2.3/scripts/:$PATH
export PATH=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin:$PATH
export AUGUSTUS_CONFIG_PATH=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/pkgs/augustus-3.2.2-boost1.61_3/config
OrthoDB=/its1/GB_BT2/jianzuoyi/database/busco/embryophyta_odb9
#BUSCO=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/busco
BUSCO=/its1/GB_BT2/jianzuoyi/biosoft/busco/scripts/run_BUSCO.py
# --------------------------------------------------------------------------------------
GENOME=/its1/GB_BT2/jianzuoyi/projects/pepper/modules/falcon/versions/v1/2-asm-falcon_5kb/p_ctg.fa
OUTBASE=p_ctg_5kb
THREADS=16
# --------------------------------------------------------------------------------------
$BUSCO \
-i $GENOME \
-o $OUTBASE \
-l $OrthoDB \
-m genome \
-c $THREADS \
-f \
-r
touch run_busco_${OUTBASE}_done
