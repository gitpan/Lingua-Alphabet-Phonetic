use Test::More no_plan;
use Data::Dumper;  # for debugging only

BEGIN { use_ok('Lingua::Alphabet::Phonetic') };
BEGIN { use_ok('Lingua::Alphabet::Phonetic::NATO') };

my $oMilSpeaker = new Lingua::Alphabet::Phonetic('NATO');
# diag(Dumper($oMilSpeaker));
isa_ok($oMilSpeaker, 'Lingua::Alphabet::Phonetic::NATO');

my @asMilSpeak = $oMilSpeaker->enunciate('RJT!9');
# diag(Dumper(\@asMilSpeak));
# is(5, scalar(@asMilSpeak));
my @asExpected = qw( Romeo Juliet Tango ! Niner );
is_deeply(\@asExpected, \@asMilSpeak);
