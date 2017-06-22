paste -d ' ' <(find /its1/GB_BT2/jianzuoyi/workspace/pepper/data/lixiangfeng/lajiao_sandai/ -name "*subreads.bam" | xargs -n 1 -I {} echo /opt/bio/bin/samtools fastq {}) \
<(find /its1/GB_BT2/jianzuoyi/workspace/pepper/data/lixiangfeng/lajiao_sandai/ -name "*subreads.bam" | xargs -n 1 -I {} basename {} .bam | xargs -n 1 -I {} echo '> /its1/GB_BT2/jianzuoyi/workspace/pepper/output/split/{}.fq && \') > /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/bam2fastq.sh

echo "echo finish &> /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/bam2fastq.sh.ok" >> /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/bam2fastq.sh
