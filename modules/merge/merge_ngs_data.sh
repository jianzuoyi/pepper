echo "find /its1/PROJECT/lixiangfeng/Pepper/00_NGS_SRA/filter_data | egrep '+pair$|+single$' | xargs -I {} cat {} > /its1/GB_BT2/jianzuoyi/workspace/pepper/output/merge/pepper.ngs.merged.fa && \
echo finish &> /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/merge_ngs_data.sh.ok" > /its1/GB_BT2/jianzuoyi/workspace/pepper/shell/merge_ngs_data.sh
