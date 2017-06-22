echo  start at `date +'%Y-%m-%d %H:%M:%S'`
mkdir -p /its1/GB_BT2/jianzuoyi/workspace/pepper/output/SOAPdenovo && \
rm -rf /its1/GB_BT2/jianzuoyi/workspace/pepper/output/SOAPdenovo/* && \
/its1/GB_BT1/lixiangfeng/pipe/02.assembly/bin/SOAPdenovo-63mer pregraph \
-s /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/lib.cfg \
-o /its1/GB_BT2/jianzuoyi/workspace/pepper/output/SOAPdenovo/pepper \
-K 45 \
-p 32 && \
touch /its1/GB_BT2/jianzuoyi/workspace/pepper/modules/SOAPdenovo/soapdenovo_pregraph_done
echo done sparse_pregraph at `date +'%Y-%m-%d %H:%M:%S'`
