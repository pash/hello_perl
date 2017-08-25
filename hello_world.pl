#!/usr/bin/perl

print "Howdy, world!\n";
print "Pat was here!";
print "Yo!\n";

$phrase = "Konnichiwa!\n";
print $phrase;

@lines = `perldoc -u -f atan2`; 
foreach (@lines) {
	s/\w<([^>]+)>/\U$1/g; 
	print;
}