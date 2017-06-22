export PATH=$PATH:/its1/GB_BT1/lixiangfeng/bin/01.assembly/DNA_Denovo/PacBio/SMRTAnalysis/smrtanalysis_2.3.0.140936/install/smrtanalysis_2.3.0.140936/analysis/bin/
export PATH=$PATH:/its1/GB_BT2/jianzuoyi/biosoft/DBG2OLC/compiled/

#cat /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/pepper.contig /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/subreads.merged.fa > /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/ctg_pb.fasta

cd /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/consensus
bash /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/consensus/split_and_run_sparc.2.sh \
/its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/backbone_raw.fasta \
/its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/DBG2OLC_Consensus_info.txt \
/its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/ctg_pb.fasta \
/its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/consensus/split \
2 > /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/DBG2OLC/consensus/cns_log.txt
