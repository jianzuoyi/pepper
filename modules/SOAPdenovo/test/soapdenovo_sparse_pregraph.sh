echo  start at `date +'%Y-%m-%d %H:%M:%S'`
mkdir -p /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/test/output && \
rm -rf /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/test/output/* && \
/its1/GB_BT1/lixiangfeng/pipe/02.assembly/bin/SOAPdenovo-63mer sparse_pregraph \
-s /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/test/lib.cfg \
-o /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/test/output/pepper \
-K 25 \
-z 100001 \
-p 8
echo done sparse_pregraph at `date +'%Y-%m-%d %H:%M:%S'`
