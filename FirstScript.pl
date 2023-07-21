
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
