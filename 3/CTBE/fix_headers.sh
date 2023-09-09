#!/bin/bash
rename_prefix() {
    if [ $# -ne 3 ]; then
        echo "Usage: rename_prefix IN OUT PREFIX"
        return 1
    fi

    local IN="$1"
    local OUT="$2"
    local PREFIX="$3"

    sed "/^>/s/^>/>${PREFIX}_/" "$IN" > "$OUT"
}

# Usage
rename_prefix CTBE_CDS.fa CTBE_CDS_fixed.fa SP803280_CTBE
rename_prefix CTBE_exons.fa CTBE_exons_fixed.fa SP803280_CTBE 
rename_prefix CTBE_protein.fa CTBE_protein_fixed.fa SP803280_CTBE
rename_prefix CTBE_transcripts.fa CTBE_transcripts_fixed.fa SP803280_CTBE
