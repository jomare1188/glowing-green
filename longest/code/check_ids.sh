OG_TABLE=Orthogroups_for_longest_cds_test.tsv

cut -f2 $OG_TABLE |  sort > ids_2.fix
comm -13 all_transcripts.ids ids_2.fix > comm_13_all_transcripts_vs_ids_fix_2
SEE_ME=$(echo $(wc -l comm_13_all_transcripts_vs_ids_fix_2) ids unicos en tabla de proteinas de $(wc -l ids_2.fix))
# ok
#sed -i 's/CP74-2005_k/CP74_2005_k/' $OG_TABLE
#sed -i 's/FN95-1702_k/FN95_1702_k/' $OG_TABLE

sed -i 's/CP74_2005_k/CP74-2005_k/' $OG_TABLE
sed -i 's/FN95_1702_k/FN95-1702_k/' $OG_TABLE
sed -i 's/GT96_167_k/GT96-167_k/' $OG_TABLE
sed -i 's/GXU_34140_k/GXU-34140_k/' $OG_TABLE
sed -i 's/KQ08_2850_k/KQ08-2850_k/' $OG_TABLE
sed -i 's/KQB07_23863_k/KQB07-23863_k/' $OG_TABLE
sed -i 's/KQB08_32953_k/KQB08-32953_k/' $OG_TABLE
sed -i 's/KQB09_20620_k/KQB09-20620_k/' $OG_TABLE
sed -i 's/KQB09_23137_k/KQB09-23137_k/' $OG_TABLE
sed -i 's/GXU_34176_k/GXU-34176_k/' $OG_TABLE
sed -i 's/KQB07_23990_k/KQB07-23990_k/' $OG_TABLE
sed -i 's/KQB07_24619_k/KQB07-24619_k/' $OG_TABLE
sed -i 's/KQB07_24739_k/KQB07-24739_k/' $OG_TABLE
sed -i 's/LCP85_384_k/LCP85-384_k/' $OG_TABLE
sed -i 's/KQB09_20432_k/KQB09-20432_k/' $OG_TABLE
sed -i 's/MT11_610_k/MT11-610_k/' $OG_TABLE
sed -i 's/QA02_1009_k/QA02-1009_k/' $OG_TABLE
sed -i 's/QA96_1749_k/QA96-1749_k/' $OG_TABLE
sed -i 's/QBYN04_26041_k/QBYN04-26041_k/' $OG_TABLE
sed -i 's/QC02_402_k/QC02-402_k/' $OG_TABLE
sed -i 's/QN05_1460_k/QN05-1460_k/' $OG_TABLE
sed -i 's/QN05_1509_k/QN05-1509_k/' $OG_TABLE
sed -i 's/QN05_1743_k/QN05-1743_k/' $OG_TABLE
sed -i 's/QS99_2014_k/QS99-2014_k/' $OG_TABLE
sed -i 's/QN05_803_k/QN05-803_k/' $OG_TABLE
sed -i 's/SP80_3280_Mattielo_SP803280/SP80-3280_Mattielo_SP803280/' $OG_TABLE
sed -i -r 's/CC011940_cc_(.*)_RA$/CC011940_cc_\1-RA/' $OG_TABLE

sed -i 's/SP80_3280_CTBE/SP80-3280_CTBE/' $OG_TABLE
sed -i 's/SP80_3280_IQUSP/SP80-3280_IQUSP/' $OG_TABLE
sed -i 's/SP80-3280_IQUSP_evm.model.scga7_/SP80-3280_IQUSP_evm.model./'  $OG_TABLE
#sed -i -r 's/SP80-3280_IQUSP_(.*)\.scga7_(.*)/SP80-3280_IQUSP_\1_\2/' $OG_TABLE
sed -i -r 's/SP80-3280_IQUSP_(.*)_uti_/SP80-3280_IQUSP_\1.uti_/' $OG_TABLE
sed -i 's/scga7\.//' $OG_TABLE
sed -i -r 's/(SP80-3280_IQUSP_.*)_(unitig.*)/\1.\2/' $OG_TABLE
sed -i 's/SP80_3280_unmapped/SP80-3280_unmapped/' $OG_TABLE
sed -i -r 's/(R570_BAC_.*_contig)_(.*)/\1-\2/' $OG_TABLE
sed -i -r 's/(R570_ASM_.*_contig)_(.*)/\1-\2/' $OG_TABLE

sed -i -e 's/SP80-3280_IQUSP_evm.model.unitig_164602.1_evm.model.scga7.unitig_164602.2/'
