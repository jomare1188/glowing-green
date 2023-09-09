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
rename_prefix IQ_CDS.fa IQ_CDS_fixed.fa SP803280_IQUSP
rename_prefix IQ_exons.fa IQ_exons_fixed.fa SP803280_IQUSP 
rename_prefix IQ_protein.fa IQ_protein_fixed.fa SP803280_IQUSP
rename_prefix IQ_transcripts.fa IQ_transcripts_fixed.fa SP803280_IQUSP
