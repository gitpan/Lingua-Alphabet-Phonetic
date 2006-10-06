
use inc::Module::Install;

name('Lingua-Alphabet-Phonetic');
version(0.052);

author('Martin Thurn <mthurn@cpan.org>');
license('perl');

install_script('phonetize');
clean_files('phonetize');

requires( perl => '5.004' );

# File::Basename is only needed for creating the executables:
include_deps('File::Basename', 5.004);
build_requires('File::Basename');
# Test::More is only needed for `make test`:
build_requires('Test::More');
build_requires('Test::Pod');
# I think there's a bug in Module::CoreList or something, because this
# comes up missing on some platforms:
build_requires('Test::Simple');

check_nmake();      # check and download nmake.exe for Win32
&Makefile->write;

sub MY::postamble
  {
  my $ret = <<'PART0';
phonetize :: Code/phonetize-code.PL
	$(FULLPERL) phonetize.PL
	$(FULLPERL) -MExtUtils::Command -e chmod 0755 $@

PART0
    } # if

__END__

