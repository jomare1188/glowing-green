#!/bin/bash
#$ -q all.q
#$ -cwd
#$ -V
#$ -pe smp 1

source /home/jorge.munoz/.bashrc
GENOTYPE="CTBE"
IN_GENOME="GCA_002018215.1_CTBE_SP803280_v1.0_genomic.fna"
CDS=${GENOTYPE}_CDS.fa
PROTEINS=${GENOTYPE}_protein.fa
GFF="CTBE_SP803280_genome_annotation.EVM19022016.fixIDS2.gff3"

# get files
cp -v  /Storage/data1/riano/Sugarcane/GenomeCTBE/CTBE_SP803280_genome_annotation.EVM19022016.fixIDS2.gff3  /Storage/data1/riano/Sugarcane/GenomeCTBE/GCA_002018215.1_CTBE_SP803280_v1.0_genomic.fna .


gffread -g ${IN_GENOME} -x $CDS -y ${PROTEINS} -C ${GFF}
