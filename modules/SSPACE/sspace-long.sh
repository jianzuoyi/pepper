#!/bin/bash

PERL=/opt/bio/perl/bin/perl
SSPACE_LongRead=/its1/GB_BT2/jianzuoyi/biosoft/SSPACE/SSPACE-LongRead_v1-1/SSPACE-LongRead.pl
CONTIG=/its1/GB_BT2/jianzuoyi/projects/pepper/modules/quiver/02.arrow/p_ctg_5k_arrow.fasta
PACBIO_READS=/its1/GB_BT2/jianzuoyi/projects/pepper/modules/SSPACE/input.fofn
THREADS=24

$PERL $SSPACE_LongRead -c $CONTIG -p $PACBIO_READS -t $THREADS
