#!/bin/bash
#$ -q all.q
#$ -cwd
#$ -V
#$ -pe smp 1

source /home/jorge.munoz/.bashrc
GENOTYPE="IQ"
IN_GENOME="sc.mlc.cns.sgl.utg.scga7.importdb.fa"
CDS=${GENOTYPE}_CDS.fa
PROTEINS=${GENOTYPE}_protein.fa
GFF="sc.mlc.cns.sgl.utg_scga7.sort.gff3.gz

# you have to delete scga7_ from genome headers to make coincide the genome fasta and the gff
cp ${IN_GENOME} ${IN_GENOME}.bak
sed -i '/^>/s/scga7_//' ${IN_GENOME}

# next you have to erase the sequence uti_cns_0113413 from the genome because it's empty and don't let gffread make and index of the genome.
the line we have to delete is 548795 and two times becaus we remove the header and the empty line 
sed -i 548795d ${IN_GENOME}
sed -i 548795d ${IN_GENOME}

gffread -g ${IN_GENOME} -x $CDS -y ${PROTEINS} -C ${GFF}

