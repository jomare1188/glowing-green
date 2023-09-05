grep ">" CTBE_protein.fa | cut -f2 -d">" | sort > CTBE_protein_id
comm -13 ../ref_protein_id CTBE_protein_id > proteins_CTBE_not_in_ref

