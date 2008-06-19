
# $Id: Makefile.PL,v 1.12 2008/06/18 01:02:35 Martin Exp $

use inc::Module::Install;

name('Lingua-Alphabet-Phonetic');
version(0.102);

author('Martin Thurn <mthurn@cpan.org>');
license('perl');

install_script('phonetize');
clean_files('phonetize');

requires( perl => '5.004' );

# File::Basename is only needed for creating the executables:
build_requires('File::Basename');
# Test::More is only needed for `make test`:
test_requires('Test::More');
test_requires('Test::Pod');
test_recommends('Test::Pod::Coverage');
# I think there's a bug in Module::CoreList or something, because this
# comes up missing on some platforms:
test_requires('Test::Simple');

WriteAll;

__END__
