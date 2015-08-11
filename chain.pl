#!/usr/bin/env perl

use strict;
use warnings;
use Getopt::Long;

print "Okay. Let's get this going.\n";

my $file;
GetOptions( 'file|f=s' => \$file );
tac($file) if $file;

sub tac {
	my $text = `tac $file`;
	print "$text\n";
}
