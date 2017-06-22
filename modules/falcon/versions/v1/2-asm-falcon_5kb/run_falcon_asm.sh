#!/bin/bash
set -vex
# Given, las.fofn,
# write preads.ovl:
time fc_ovlp_filter --db /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/falcon/1-preads_ovl/preads.db --fofn /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/falcon/1-preads_ovl/merge-gather/las.fofn --max_diff 100 --max_cov 100 --min_cov 2 --n_core 24 --min_len 5000 >| preads.ovl

ln -sf /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/falcon/1-preads_ovl/db2falcon/preads4falcon.fasta ./preads4falcon.fasta

# Given preads.ovl,
# write sg_edges_list, c_path, utg_data, ctg_paths.
time fc_ovlp_to_graph  --min_len 5000 preads.ovl >| fc_ovlp_to_graph.log

# Given sg_edges_list, utg_data, ctg_paths, preads4falcon.fasta,
# write p_ctg.fa and a_ctg_all.fa,
# plus a_ctg_base.fa, p_ctg_tiling_path, a_ctg_tiling_path, a_ctg_base_tiling_path:
time fc_graph_to_contig

rm -f ./preads4falcon.fasta

# Given a_ctg_all.fa, write a_ctg.fa:
time fc_dedup_a_tigs

touch falcon_asm_done