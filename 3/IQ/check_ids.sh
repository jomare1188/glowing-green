grep ">" IQ_protein.fa | cut -f2 -d">" | sort > IQ_protein_id
comm -13 ../ref_protein_id IQ_protein_id > proteins_IQ_not_in_ref

