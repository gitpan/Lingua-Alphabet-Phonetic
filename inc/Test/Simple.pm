#line 1 "inc/Test/Simple.pm - c:/Perl/lib/Test/Simple.pm"
package Test::Simple;

use 5.004;

use strict 'vars';
use vars qw($VERSION);
$VERSION = '0.47';


use Test::Builder;
my $Test = Test::Builder->new;

sub import {
    my $self = shift;
    my $caller = caller;
    *{$caller.'::ok'} = \&ok;

    $Test->exported_to($caller);
    $Test->plan(@_);
}


#line 85

sub ok ($;$) {
    $Test->ok(@_);
}


#line 234

1;
