#!/usr/bin/perl

use strict;

my @fred = above_average(1..10); 
print "\@fred is @fred\n"; 
print "(Should be 6 7 8 9 10)\n"; 

my @barney = above_average(100, 1..10); 
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub total {
	my @numbers = @_;
	my $sum = 0;

	foreach my $number (@numbers) {
		$sum += $number;
	}
	
	return $sum;
}

sub above_average {
	my @numbers = @_;
	my @above = ();
	my $ave = 0;

	$ave = &total / @numbers;
	
	foreach my $number (@numbers) {
		if($number > $ave) {
			unshift @above, $number;
		}
	}
	
	return @above;
}