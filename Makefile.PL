
use inc::Module::Install;

name('Lingua-Alphabet-Phonetic');
version(0.03);

author('Martin Thurn <mthurn@cpan.org>');
license('perl');

install_script('phonetize');
clean_files('phonetize');

requires( perl => '5.004' );

# File::Basename is only needed for creating the executables:
include_deps('File::Basename', 5.004);
build_requires('File::Basename');
# Test::More is only needed for `make test`:
include_deps('Test::More', 5.004);
build_requires('Test::More');
# I think there's a bug in Module::CoreList or something, because this
# comes up missing on some platforms:
include_deps('Test::Simple', 5.004);
build_requires('Test::Simple');

check_nmake();      # check and download nmake.exe for Win32
&Makefile->write;

__END__
