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
GFF="sc.mlc.cns.sgl.utg_scga7.sort.gff3"

# get files
cp -v /Storage/data1/riano/Sugarcane/GenomeIQ/sc.mlc.cns.sgl.utg_scga7.sort.gff3.gz /Storage/data1/riano/Sugarcane/GenomeIQ/sc.mlc.cns.sgl.utg.scga7.importdb.fa .

# unzip gff  file
gzip -d sc.mlc.cns.sgl.utg_scga7.sort.gff3.gz


# next you have to erase the sequence uti_cns_0113413 from the genome because it's empty and don't let gffread make and index of the genome.
# the line we have to delete is 548795 and two times becaus we remove the header and the empty line 
sed -i 548795d ${IN_GENOME}
sed -i 548795d ${IN_GENOME}

# you have to delete scga7_ from genome headers to make coincide the genome fasta and the gff
sed -i '/^>/s/scga7_//' ${IN_GENOME}

# run gffread
gffread -g ${IN_GENOME} -x ${CDS} -y ${PROTEINS} -C ${GFF}
