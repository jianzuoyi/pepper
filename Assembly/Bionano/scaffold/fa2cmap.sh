fa2map=/its1/GB_BT2/jianzuoyi/biosoft/bionano/tools/pipeline/1.0/HybridScaffold/1.0/scripts/fa2cmap_multi_color.pl

perl $fa2map \
-i pacbio_scaffold_long_short.fasta \
-e BssSI 1 \
-o /its1/GB_BT2/jianzuoyi/workspace/Pepper/Assembly/Bionano/scaffold
