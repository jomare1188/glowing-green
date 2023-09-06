#!/bin/bash
#$ -q all.q
#$ -cwd
#$ -V
#$ -pe smp 1

source /home/jorge.munoz/.bashrc
GENOTYPE="colombia"
IN_GENOME="colombia.fa"
CDS=${GENOTYPE}_CDS.fa
PROTEINS=${GENOTYPE}_protein.fa
TRANSCRIPTS=${GENOTYPE}_transcripts.fa
EXONS=${GENOTYPE}_exons.fa
GFF="colombia.gff"
# get files
cp -v /Storage/data1/riano/Sugarcane/GenomeCenicana/anotación/maker_tuxedo_GFF3CombineAnnotations.putative_function.domain_added.renamed.putative_function_domain_added.gff colombia.gff
cp -v /Storage/data1/riano/Sugarcane/GenomeCenicana/ensamblaje/cc-01-1940_flye_polishing_allhic_ngsepBuilder.fasta colombia.fa
gffread -g ${IN_GENOME} -x $CDS -y ${PROTEINS} -u ${TRANSCRIPTS} -w ${EXONS} -C ${GFF}
