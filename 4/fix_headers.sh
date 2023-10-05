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
rename_prefix colombia_CDS.fa colombia_CDS_fixed.fa CENICANA
#rename_prefix colombia_exons.fa colombia_exons_fixed.fa CENICANA 
rename_prefix colombia_protein.fa colombia_protein_fixed.fa CENICANA
rename_prefix colombia_transcripts.fa colombia_transcripts_fixed.fa CENICANA
