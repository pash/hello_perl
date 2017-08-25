#!/usr/bin/perl

$pi = 3.141592654;

print "Fixed radius: \n";
$radius = 12.5;
$circumference = $radius * 2 * $pi;
print $circumference . "\n";

print "Enter radius: \n";
chomp($radius2 = <STDIN>);
$circumference2 = $radius2 * 2 * $pi;
print $circumference2 . "\n";
