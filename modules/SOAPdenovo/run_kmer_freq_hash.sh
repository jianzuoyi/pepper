mkdir -p /its1/GB_BT2/jianzuoyi/workspace/pepper/output/kmer/ && \
/its1/GB_BT2/jianzuoyi/biosoft/gce-1.0.0/kmerfreq/kmer_freq_hash/kmer_freq_hash \
-k 17 \
-l /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/read.list \
-p /its1/GB_BT2/jianzuoyi/workspace/pepper/output/kmer/kmer \
-i 600000000 \
-L 100 \
-t 4 && \
touch /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/kmer_freq_hash_done
