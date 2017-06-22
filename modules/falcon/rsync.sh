cat input.fofn | while read line
do
    fname=$(basename $line)
    echo rsync -P --rsh=ssh  jianzuoyi@218.6.173.100:$line /HOME/genebang_txu_1/BIGDATA/workspace/pepper/data/pacbio/$fname \&
done