paste -d ' ' <(find /its1/GB_BT2/jianzuoyi/workspace/pepper/output/split/Pacbio -type f -name '*.fq' | xargs -n 1 -I {} echo "/opt/bio/proovread/bin/proovread -t 20 --overwrite --coverage 50 -s /its1/GB_BT2/jianzuoyi/workspace/pepper/output/normalize/SRR653470-SRR653476.normalized.fa -l {} -p") <(find /its1/GB_BT2/jianzuoyi/workspace/pepper/output/split/Pacbio -type f -name '*.fq' | xargs -n 1 -I {} basename {} .fq | xargs -n 1 -I {} echo "/its1/GB_BT2/jianzuoyi/workspace/pepper/output/proovread/{}")
