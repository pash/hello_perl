#!/usr/bin/perl

print "Enter string to repeat: ";
chomp($mystring = <STDIN>);

print "Enter repetition: ";
chomp($reps = <STDIN>);

$n = 0;
while($n < $reps) {
	$n += 1;
	print $mystring . "\n";
}