echo start contig at `date +'%Y-%m-%d %H:%M:%S'`
/its1/GB_BT1/lixiangfeng/pipe/02.assembly/bin/SOAPdenovo-63mer contig \
-g /its1/GB_BT2/jianzuoyi/workspace/pepper/output/SOAPdenovo/kmer31/pepper \
-M 1 \
-p 32 && \
touch /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/kmer31/soapdenovo_contig_done
echo done contig at `date +'%Y-%m-%d %H:%M:%S'`
