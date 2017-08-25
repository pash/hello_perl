#!/usr/bin/perl

use strict;

my @fred = qw{ 1 3 5 7 9 }; 
my $fred_total = total(@fred); 
print "The total of \@fred is $fred_total.\n"; 

print "Enter some numbers on separate lines: "; 
my $user_total = total(<STDIN>); 
print "The total of those numbers is $user_total.\n";

my @thousand = 1..1000;
my $thousand_total = total(@thousand);
print "sum of numbers from 1 to 1000 is $thousand_total.\n";

sub total {
	my @numbers = @_;
	my $sum = 0;

	foreach my $number (@numbers) {
		$sum += $number;
	}
	
	return $sum;
}