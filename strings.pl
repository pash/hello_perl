#!/usr/bin/perl

use strict;

my @strs = (
	"Content: Received From Client (3 pages) (7-9 of 12)",
	"SEO Content (3 pages) (7-9 of 12)",
	"Content Dev (3 pages)",
	"Additonal Content (11/22)",
	"New Images (3 images)",
	"Edit Content (3 of 12)"
);

foreach my $str (@strs) {
	print "------------\n";
	
	my $par_loc = index($str, '(');
	my $no_par = substr($str, 0, $par_loc);
	my $in_par = substr($str, $par_loc, length($str));
	$no_par =~ s/\s+$//;

	print "str is: $str \n";
	print "par loc is: $par_loc \n";
	print "new string is: $no_par \n";
	print "inside par is: $in_par \n";
}