
# first we get the CDSs and transcrip files for SP80-3280
# IQ
cp -v ../CTBE/CTBE_transcripts_fixed.fa ../CTBE/CTBE_exons_fixed.fa ../CTBE/CTBE_protein_fixed.fa .
# IQ
cp -v ../IQ/IQ_transcripts_fixed.fa ../IQ/IQ_exons_fixed.fa ../IQ/IQ_protein_fixed.fa .
## for already mounted transcriptomes for SP80-3280
cp -v ../../CDS/SP80-3280_CDS.fasta.gz ../../transcripts/SP80-3280_transcriptome.fasta.gz ../SP80-3280_PEP.fix.nr100.fasta.gz .
## we unzip the last two files 
gzip -d SP80-3280_CDS.fasta.gz SP80-3280_transcriptome.fasta.gz SP80-3280_PEP.fix.nr100.fasta.gz
## JOINT
cat CTBE_exons_fixed.fa IQ_exons_fixed.fa SP80-3280_CDS.fasta > SP80-3280_CDS_augmented.fasta
cat CTBE_transcripts_fixed.fa IQ_transcripts_fixed.fa SP80-3280_transcriptome.fasta > SP80-3280_transcriptome_augmented.fasta
cat CTBE_protein_fixed.fa IQ_protein_fixed.fa SP80-3280_PEP.fix.nr100.fasta > SP80-3280_proteins_augmented.fasta

