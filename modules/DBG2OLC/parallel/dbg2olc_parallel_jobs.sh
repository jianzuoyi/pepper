#!/bin/bash

find /its1/GB_BT2/jianzuoyi/workspace/pepper/output/subreads/ -name 'm*.subreads.fa' | while read path
do
    echo $path
    name=$(basename $path .subreads.fa)
    mkdir -p $name
    cp dbg2olc_template.sh ${name}/run_dbg2olc.sh
    echo "f $path && \\
touch $(pwd)/${name}/run_dbg2olc.sh.done">> ${name}/run_dbg2olc.sh
done