
# $Id: NATO.pm,v 1.5 2007/06/04 01:04:40 Daddy Exp $

=head1 NAME

Lingua::Alphabet::Phonetic::NATO - map ABC's to the NATO phonetic letter names

=head1 SYNOPSIS

This is a specialization of Lingua::Alphabet::Phonetic.
You should not use this module;
all interaction should be done with an object of type Lingua::Alphabet::Phonetic.

=head1 NOTES

=head1 SEE ALSO

http://en.wikipedia.org/wiki/NATO_phonetic_alphabet

=head1 BUGS

Please tell the author if you find any!

=head1 AUTHOR

Martin Thurn (mthurn@cpan.org).

=cut

#####################################################################

package Lingua::Alphabet::Phonetic::NATO;

use strict;

use base 'Lingua::Alphabet::Phonetic';
our
$VERSION = sprintf("%d.%02d", q$Revision: 1.5 $ =~ /(\d+)\.(\d+)/o);

my @asAlphabet = qw(
Alpha Bravo Charlie Delta Echo Foxtrot Golf Hotel India Juliet Kilo Lima
Mike November Oscar Papa Quebec Romeo Sierra Tango Uniform Victor Whiskey
Xray Yankee Zulu
Zero One Two Three Four Five Six Seven Eight Niner
);
my %hash = map { $_ => shift @asAlphabet } ('a'..'z', 0..9);

sub _name_of_letter
  {
  my $self = shift;
  my $s = shift;
  # print STDERR " + L::A::P::NATO::_name_of_letter($s)\n";
  # If we get more than one character, ignore the rest:
  my $c = lc substr($s, 0, 1);
  if (exists($hash{$c}))
    {
    return $hash{$c};
    } # if
  return $self->SUPER::_name_of_letter($s);
  } # _name_of_letter

1;

__END__

