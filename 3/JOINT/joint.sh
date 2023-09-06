
# first we get the CDSs and transcrip files for SP80-3280
# IQ
cp -v ../CTBE/CTBE_transcripts.fa ../CTBE/CTBE_exons.fa .
# IQ
cp -v ../IQ/IQ_transcripts.fa ../IQ/IQ_exons.fa .
## for already mounted transcriptomes for SP80-3280
cp -v ../../CDS/SP80-3280_CDS.fasta.gz ../../transcripts/SP80-3280_transcriptome.fasta.gz .
## we unzip the last two files 
gzip -d SP80-3280_CDS.fasta.gz SP80-3280_transcriptome.fasta.gz
## JOINT
cat CTBE_exons.fa IQ_exons.fa SP80-3280_CDS.fasta > SP80-3280_CDS_augmented.fasta
cat CTBE_transcripts.fa IQ_transcripts.fa SP80-3280_transcriptome.fasta > SP80-3280_transcriptome_augmented.fasta



