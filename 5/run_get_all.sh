#!/bin/bash
#$ -q all.q
#$ -cwd
#$ -V
#$ -pe smp 1

source /home/jorge.munoz/.bashrc
GENOTYPE="R5760"
IN_GENOME="R5760.fa"
CDS=${GENOTYPE}_CDS.fa
PROTEINS=${GENOTYPE}_protein.fa
TRANSCRIPTS=${GENOTYPE}_transcripts.fa
EXONS=${GENOTYPE}_exons.fa
GFF="R5760.gff3"
# get files
cp -v /Storage/data1/riano/Sugarcane/GenomeR570/sugarcane_stp.gff3 ${GFF}
cp -v /Storage/data1/riano/Sugarcane/GenomeR570/single_tiling_path_assembly.fna ${IN_GENOME}
gffread -g ${IN_GENOME} -x $CDS -y ${PROTEINS} -u ${TRANSCRIPTS} -w ${EXONS} -C ${GFF}
