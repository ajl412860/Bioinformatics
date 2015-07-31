#!usr/TerminalWork/lib/perl5/
#/Users/andrewlewis/TerminalWork/lib/perl5/5.16.2/man/man3/Bio::Tools::IUPAC.3pm
#use diagnostics;
use Bio::PrimarySeq;
use Bio::Tools::IUPAC;
use strict;
my %iupac_prot = Bio::Tools::IUPAC->newiupac_iup;

my $ambiseq = Bio::PrimarySeq->new(-seq => 'ARTCGUTGN', -alphabet => 'dna'  );

my $iupac = Bio::Tools::IUPAC->new(-seq => $ambiseq );
while (my $uniqueseq = $iupac->next_seq()){
}

my $regexp = $iupac->regexp();

print $regexp();
