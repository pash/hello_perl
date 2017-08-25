#!/usr/bin/perl

foreach $rock (qw/ bedrock slate lava /) {
	print "One rock is $rock.\n"; # Prints names of three rocks
}

@rocks = qw/ bedrock slate lava /; 
foreach $rock (@rocks) {
	$rock = "\t$rock";	# put a tab in front of each element of @rocks 
	$rock .= "\n";			# put a newline on the end of each
} 
print "The rocks are:\n", @rocks; # Each one is indented, on its own line

$n = 1; 
while ($n < 10) {
	$sum += $n; $n += 2; # On to the next odd number
} 
print "The total was $sum.\n";