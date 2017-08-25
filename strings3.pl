#!/usr/bin/perl

use strict;

my @strs = ();
$strs[0] = "(4 pages)";
$strs[1] = "(4 pages content)";
$strs[2] = "(4 images)";
$strs[3] = "(4 slides)";
$strs[4] = "(4 videos)";
$strs[5] = "(1/4)";
$strs[6] = "(something)(2/4)";
$strs[7] = "(1 of 4)";

for my $str (@strs) {	
	my $number_of_items = 0;
	if ($str =~ /\(\d+\s+[a-zA-Z\s]+\)/i) {
		my $num_str = $str;
		$num_str =~ tr/0-9//cd;
		$number_of_items = $num_str;
	}
	if ($str =~ /\(\d+\/\d+\)/i) {
		my $div_loc = index($str, '/');
		$number_of_items = substr($str, $div_loc+1, -1);
	}
	if ($str =~ /\(\d+\s*of\s*\d+\)/i) {
		my $div_loc = index($str, 'of');
		$number_of_items = substr($str, $div_loc+3, -1);
	}
	print "str is: $str, number is $number_of_items \n";
}