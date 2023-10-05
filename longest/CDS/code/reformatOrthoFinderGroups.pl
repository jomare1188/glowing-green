#!/usr/bin/perl

use strict;
use warnings;

use Getopt::Long;

my $version="1.0";
my $license='';
my $help='';
my $infile='';

#Get input from user
##
GetOptions(
 'license|l'   => \$license,
 'help|h|?'    => \$help,
 'infile|i=s'  => \$infile
);

if($help){
 &usage;
 exit 1
}
if($license){
 &license;
 exit 1
}
if(!-s $infile){
 print STDERR"\n\tFATAL: You must provide an infile, resulting form the OrthoFinder run.\n\n";
 &usage;
 exit 0;
}

my $outfile=$infile;
$outfile=~s/\.tsv$/.tbl/;
open OUT, ">$outfile";
print OUT "Orthologue Group ID\tSpecies\tProteinID\n";
open IN, $infile;
my @lines=<IN>;
chomp $lines[0];
my @header=split("\t",$lines[0]);
for (my $i=1;$i<@lines;$i++){
 chomp $lines[$i];
 my @fields=split("\t",$lines[$i]);
 for (my $j=1;$j<@fields;$j++){
  if ($fields[$j] ne ' '){
   my @genes=split(', ',$fields[$j]);
   foreach my $gene(@genes){
    my ($id)=split(/ /,$gene);
    print OUT "$fields[0]\t$header[$j]\t$id\n";
   }
  }
 }
}
close IN;
close OUT;
sub usage{
    print STDERR "$0 version $version, Copyright (C) 2015 Diego Mauricio Riano Pachon\n";
    print STDERR "$0 comes with ABSOLUTELY NO WARRANTY; for details type `$0 -l'.\n";
    print STDERR "This is free software, and you are welcome to redistribute it under certain conditions;\n";
    print STDERR "type `$0 -l' for details.\n";
    print STDERR <<EOF;
NAME
    $0  reformat OrthoFinder groups output

USAGE
    $0 --infile orthoFinder.groups.tsv

OPTIONS
    --infile      -i    OrthoFinder group file                                          REQUIRED
    --help        -h    This help.
    --license     -l    License.

EOF
}
sub license{
    print STDERR <<EOF;

Copyright (C) 2015 Diego Mauricio Riaño Pach<C3>
http://bce.bioetanol.cnpem.br
e-mail: diego.riano\@bioetanol.org.br

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
EOF
exit;
}

