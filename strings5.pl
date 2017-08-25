#!/usr/bin/perl

use strict;

my @strs = (
	"name1, name2, name3",
	"name4",
	"name5",
	"name6, name7",
	''
	"name8"
);

foreach my $str (@strs) {
	my @split = split(', ', $str);
	
	foreach my $name (@split) {
		print "name: $name \n";
	}
}