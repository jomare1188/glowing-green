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
rename_prefix R5760_CDS.fa R5760_CDS_fixed.fa R5760
rename_prefix R5760_exons.fa R5760_exons_fixed.fa R5760 
rename_prefix R5760_protein.fa R5760_protein_fixed.fa R5760
rename_prefix R5760_transcripts.fa R5760_transcripts_fixed.fa R5760
