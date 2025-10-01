#!/usr/bin/env perl
package MyModule;

use File::AddInc qw($libdir); use lib "$libdir/../../lib";

# use Mouse;
# BEGIN {
#   extends 'MouseX::OO_Modulino';
# }
use MouseX::OO_Modulino -as_base;

has foo => (is => 'ro', default => 'FOO');

sub bar { [shift->foo , "bar", @_] }

__PACKAGE__->cli_run(\@ARGV) unless caller;
1;
