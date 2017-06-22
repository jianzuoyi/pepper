echo  start at `date +'%Y-%m-%d %H:%M:%S'`
mkdir -p /its1/GB_BT2/jianzuoyi/workspace/pepper/output/SOAPdenovo/kmer31 && \
rm -rf /its1/GB_BT2/jianzuoyi/workspace/pepper/output/SOAPdenovo/kmer31/pepper* && \
/its1/GB_BT1/lixiangfeng/pipe/02.assembly/bin/SOAPdenovo-63mer sparse_pregraph \
-s /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/lib.cfg \
-o /its1/GB_BT2/jianzuoyi/workspace/pepper/output/SOAPdenovo/kmer31/pepper \
-K 31 \
-z 3260000000 \
-p 32 && \
touch /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/kmer31/soapdenovo_pregraph_done
echo done sparse_pregraph at `date +'%Y-%m-%d %H:%M:%S'`
