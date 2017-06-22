echo start normalization $(date)
output=/its1/GB_BT2/jianzuoyi/bbnorm
CleanData=/its1/GB_BT2/jianzuoyi/workspace/pepper/data/SRR653470-SRR653476-fastq.gz.clean.dup.clean.gz.cor.fa

mkdir -p $output
bbnorm=/its1/GB_BT2/jianzuoyi/biosoft/bbmap/bbnorm.sh
$bbnorm in=$CleanData out=$output/SRR653470-SRR653476-fastq.gz.clean.dup.clean.gz.cor.normalized.fq \
threads=100 tmpdir=$output target=50 maxdepth=60 mindepth=4 prefilter=t -Xmx600g && \
echo end normalization $(date) && \
echo finish &> run_bbnorm.sh.ok
