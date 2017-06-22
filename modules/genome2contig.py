import sys
import re
from Bio import SeqIO

for record in SeqIO.parse(sys.argv[1], 'fasta'):
    contigs = re.split('N+', str(record.seq))
    for i,contig in enumerate(contigs):
        print(">"+record.id+"."+str(i+1))
        print(contig)
