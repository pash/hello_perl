#!/usr/bin/perl

$user = 'pat'; 
$days_to_die = '3'; 
printf "Hello, %s; your password expires in %d days!\n", $user, $days_to_die;

printf "%g %g %g\n", 5/2, 51/17, 51 ** 17;

printf "%2d\n", 2 * 10 ** 3;

printf "%2d\n", 2e3;

printf "%2d\n", 2e3 + 1.95;

printf "%10s\n", "wilma";

printf "%-15s\n", "flintstone";

printf "%0.2f\n", 6 * 7 + 2/3;

printf "%12f\n", 6 * 7 + 2/3;

printf "%12.3f\n", 6 * 7 + 2/3;

printf "%12.0f\n", 6 * 7 + 2/3;

printf "Monthly interest rate: %.2f%%\n", 5.25/12;

my @items = qw( wilma dino pebbles ); 
my $format = "The items are:\n" . ("%10s\n" x @items);
print "the format is >>$format<<\n";
printf $format, @items;