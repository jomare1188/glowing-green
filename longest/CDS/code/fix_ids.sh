sed -i 's/CP74_2005_k/CP74-2005_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/FN95_1702_k/FN95-1702_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/GT96_167_k/GT96-167_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/GXU_34140_k/GXU-34140_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQ08_2850_k/KQ08-2850_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB07_23863_k/KQB07-23863_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB08_32953_k/KQB08-32953_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB09_20620_k/KQB09-20620_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB09_23137_k/KQB09-23137_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/GXU_34176_k/GXU-34176_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB07_23990_k/KQB07-23990_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB07_24619_k/KQB07-24619_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB07_24739_k/KQB07-24739_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/LCP85_384_k/LCP85-384_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/KQB09_20432_k/KQB09-20432_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/MT11_610_k/MT11-610_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QA02_1009_k/QA02-1009_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QA96_1749_k/QA96-1749_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QBYN04_26041_k/QBYN04-26041_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QC02_402_k/QC02-402_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QN05_1460_k/QN05-1460_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QN05_1509_k/QN05-1509_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QN05_1743_k/QN05-1743_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QS99_2014_k/QS99-2014_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/QN05_803_k/QN05-803_k/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/SP80_3280_Mattielo_SP803280/SP80-3280_Mattielo_SP803280/' ../data/Orthogroups_for_longest_cds.tsv
sed -i -r 's/CC011940_cc_(.*)_RA$/CC011940_cc_\1-RA/' ../data/Orthogroups_for_longest_cds.tsv
## hacer tambien para los transcritos
## sed -i 's/R5760_/R570_ASM_/' ../data/R5760_CDS.fa
## sed -i 's/>CENICANA/>CC011940/' all_CDS.fa
#sed -i 's/>SP803280/>SP80-3280/' ../data/SP80-3280_CDS.fasta
#sed -i 's/>SP803280/>SP80-3280/' ../data/all_CDS.fa
sed -i 's/SP80_3280_CTBE/SP80-3280_CTBE/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/SP80_3280_IQUSP/SP80-3280_IQUSP/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/SP80-3280_IQUSP_evm.model.scga7_/SP80-3280_IQUSP_evm.model./' ../data/Orthogroups_for_longest_cds.tsv
sed -i -r 's/SP80-3280_IQUSP_(.*)\.scga7_(.*)/SP80-3280_IQUSP_\1_\2/' ../data/Orthogroups_for_longest_cds.tsv
sed -i -r 's/SP80-3280_IQUSP_(.*)_uti_/SP80-3280_IQUSP_\1.uti_/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/scga7_//' ../data/Orthogroups_for_longest_cds.tsv 
sed -i -r 's/(SP80-3280_IQUSP_.*)_(unitig.*)/\1.\2/' ../data/Orthogroups_for_longest_cds.tsv
sed -i 's/SP80_3280_unmapped/SP80-3280_unmapped/' ../data/Orthogroups_for_longest_cds.tsv
# aca /Storage/data1/jorge.munoz/glowing-green/5/BACS
# CDS
# sed -i -r 's/(>Sh_[0-9A-Z_a-z-]*)_t([0-9]*)/\1_p\2/' sugarcane_mtp_CDS.fasta
# sed -i 's/>/>R570_BAC_/' sugarcane_mtp_CDS.fasta
# TRANSCRITOS
# sed -i -r 's/(>Sh_[0-9A-Z_a-z-]*)_t([0-9]*)/\1_p\2/' sugarcane_mtp_trans.fasta
# sed -i 's/>/>R570_BAC_/' sugarcane_mtp_trans.fasta
# aca /Storage/data1/jorge.munoz/glowing-green/longest/CDS/data
# sed -i -r 's/(>R570_ASM_Sh_[0-9A-Z_a-z-]*)_t([0-9]*)/\1_p\2/' R5760_CDS.fasta 
# sed -i -r 's/(>R570_ASM_Sh[0-9]*)_t([0-9]*)/\1_p\2/' ../data/R5760_CDS.fasta
sed -i -r 's/(R570_BAC_.*_contig)_(.*)/\1-\2/' ../data/Orthogroups_for_longest_cds.tsv
sed -i -r 's/(R570_ASM_.*_contig)_(.*)/\1-\2/' ../data/Orthogroups_for_longest_cds.tsv

