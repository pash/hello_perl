#!/usr/bin/perl

use strict;

chomp(my @lines = <STDIN>);
@lines = reverse @lines;

my $n = @lines + 1;
foreach my $line (@lines) {
	$n--;
	print "line $n is: $line\n";
}