# glowing-green
get representative cds per orthogroup for sugarcane pan transcriptome

1. assembled transcriptomes - CDS sequences: https://figshare.com/articles/dataset/Genotype_specific_CDS_-_Fasta_files/19426715

2. assembled transcriptomes - transcript sequences: https://figshare.com/articles/dataset/Genotype_specific_transcriptome_assemblies_-_Fasta_files/18623039

3. From 1) and 2) augment the files from SP80-3280 with the corresponding sequences from the genome assemblies, obtained using gffread, check IDs against the proteins (sent by Diego: /Storage/data1/riano/Sugarcane/SP80-3280_PEP.fix.nr100.fasta.gz)

GFF IQ: /Storage/data1/riano/Sugarcane/GenomeIQ/sc.mlc.cns.sgl.utg_scga7.sort.gff3.gz

GENOME IQ: /Storage/data1/riano/Sugarcane/GenomeIQ/sc.mlc.cns.sgl.utg.scga7.importdb.fa

GFF CTBE: /Storage/data1/riano/Sugarcane/GenomeCTBE/CTBE_SP803280_genome_annotation.EVM19022016.fixIDS2.gff3

GENOME CTBE: /Storage/data1/riano/Sugarcane/GenomeCTBE/GCA_002018215.1_CTBE_SP803280_v1.0_genomic.fna

4. Get CDS and transcript seqs from the sugarcane Colombian genotype genome assembly, the easiest to do that is using gffread (/Storage/data1/riano/Sugarcane/GenomeCenicana/anotación/maker_tuxedo_GFF3CombineAnnotations.putative_function.domain_added.renamed.putative_function_domain_added.gff and /Storage/data1/riano/Sugarcane/GenomeCenicana/ensamblaje/cc-01-1940_flye_polishing_allhic_ngsepBuilder.fasta), check that the identifiers match the protein ones (Proteins sent by Diego: /Storage/data1/riano/Sugarcane/GenomeCenicana/anotación/CC011940_PEP.fix.nr100.fasta.gz).

5. Get CDS and transcript seqs from the sugarcane R5760 genotype genome assembly, the easiest is as above using GFF from /Storage/data1/riano/Sugarcane/GenomeR570/sugarcane_stp.gff3 and /Storage/data1/riano/Sugarcane/GenomeR570/single_tiling_path_assembly.fna, check that the identifiers match the protein ones (Proteins sent by Diego: /Storage/data1/riano/Sugarcane/GenomeR570/R570_PEP.fix.nr100.fasta.gz).

6. Use the sugarcane orthofinder results for inflation 2.8 obtained by Diego: /Storage/data1/riano/Sugarcane/Pantranscriptome/Orthogroups_SugarcanePanTranscriptome_I2.8.tsv

7. Join the data for the 50 genotypes and get the longest transcript and longest CDS per orthogroup
