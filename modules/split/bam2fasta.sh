paste -d ' ' <(find /its1/GB_BT2/jianzuoyi/workspace/pepper/data/lixiangfeng/lajiao_sandai/ -name "*subreads.bam" | xargs -n 1 -I {} echo /opt/bio/bin/samtools fasta {}) \
<(find /its1/GB_BT2/jianzuoyi/workspace/pepper/data/lixiangfeng/lajiao_sandai/ -name "*subreads.bam" | xargs -n 1 -I {} basename {} .bam | xargs -n 1 -I {} echo '> /its1/GB_BT2/jianzuoyi/workspace/pepper/output/split/{}.fa && \') > /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/bam2fasta.sh

echo "echo finish &> /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/bam2fasta.sh.ok" >> /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/bam2fasta.sh
