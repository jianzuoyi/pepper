/its1/GB_BT2/jianzuoyi/biosoft/speedseq/bin/bwa mem -t 20 -x pacbio -R '@RG\tID:pepper\tSM:pepper' -M  \
/its1/GB_BT2/jianzuoyi/workspace/pepper/data/Reference/BwaIndex/Capsicum.annuum.L_Zunla-1_Release_2.0.fasta \
/its1/GB_BT2/jianzuoyi/workspace/pepper/output/merge/pepper.subreads.merged.fa \
> /its1/GB_BT2/jianzuoyi/workspace/pepper/output/mapping/pepper.subreads.merged.mapping.sam
