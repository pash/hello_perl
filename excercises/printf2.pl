#!/usr/bin/perl

use strict;

print "Enter width:\n";
chomp(my $width = <STDIN>);


print "Enter some lines:\n";	
chomp(my @lines = <STDIN>);

print "1234567890" x (($width+9)/10), "\n";

for my $line (@lines) {
	printf("%${width}s\n", $line);
}