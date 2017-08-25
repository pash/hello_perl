#!/usr/bin/perl

use strict;

my @strs = ();
$strs[0] = "something (4 pages)";
$strs[1] = "something (4 pages content)";
$strs[2] = "something (4 images)";
$strs[3] = "something (4 slides)";
$strs[4] = "something (4 videos)";
$strs[5] = "something (4 pages)(1-4 of 12)";
$strs[6] = "something (1/4)";
$strs[7] = "something (something)(2/4)";
$strs[8] = "something (something)(21/44)";
$strs[9] = "something (1 of 4)";
$strs[10] = "(3 pages) (7-9 of 12)";
$strs[11] = "Additional Content (10/13/4)";

for my $str (@strs) {	
	my $number_of_items = 0;
	if ($str =~ /\(\d+\s+[a-zA-Z\s]+\)\s*\(\d+\-\d+\s+of\s+\d+\)/i) {
		my $par_loc = index($str, ')');
		$number_of_items = substr($str, 0, $par_loc-1);
		$number_of_items =~ tr/0-9//cd;
	}
	elsif ($str =~ /\(\d+\s+[a-zA-Z\s]+\)/i) {
		my $num_str = $str;
		$num_str =~ tr/0-9//cd;
		$number_of_items = $num_str;
	}
	elsif ($str =~ /\(.+\)\s*\(\d+\/\d+\)/i) {
		my $div_loc = index($str, '/');
		my $div_str = substr($str, $div_loc, length($str));
		$number_of_items = $div_str;
		$number_of_items =~ tr/0-9//cd;
	}
	elsif ($str =~ /\(\d+\/\d+\)/i) {
		my $par_loc = index($str, '(');
		my $str2 = substr($str, $par_loc, length($str));
		my $div_loc = index($str2, '/');
		my $number_of_items1 = substr($str2, $div_loc+1, -1);
		my $number_of_items2 = substr($str2, 0+1, $div_loc-1);
		$number_of_items = $number_of_items1 > $number_of_items2 ? $number_of_items1 : $number_of_items2;
	}
	elsif ($str =~ /\(\d+\s*of\s*\d+\)/i) {
		my $par_loc = index($str, '(');
		my $str2 = substr($str, $par_loc, length($str));
		my $div_loc = index($str2, 'of');
		$number_of_items = substr($str2, 1, $div_loc-1);
	}
	elsif ($str =~ /\(\d+\/\d+\/\d+\)/i) {
	  my $par_loc = index($str, '(');
		my $str2 = substr($str, $par_loc+1, -1);
		my @nums = split('/', $str2);
		foreach my $num (@nums) {
			$number_of_items = $num if $num > $number_of_items;
		}
	}
	
	print "str is: $str, number is $number_of_items \n";
}