#!/usr/bin/perl

chomp($line = <STDIN>);

# OR
# $line = <STDIN>;
# chomp($line);

if ($line eq "\n") {
	print "That was just a blank line!\n"; 
} else {
	print "That line of input was: $line";
}