from Bio import SeqIO

def extract_sequences(fasta_file, id_list_file, output_file):
    # Load the list of IDs
    with open(id_list_file, 'r') as id_list:
        ids = set(line.strip() for line in id_list)

    # Extract sequences
    sequences = []
    for record in SeqIO.parse(fasta_file, 'fasta'):
        if record.id in ids:
            sequences.append(record)

    # Write the extracted sequences to the output file
    SeqIO.write(sequences, output_file, 'fasta')

# Example usage
fasta_file = 'all_transcripts_checked_with_cds.fasta'
id_list_file = 'ids_cds_of_longest_OG.txt'
output_file = 'transcripts_of_longest_cds_per_OG.fasta'

extract_sequences(fasta_file, id_list_file, output_file)
