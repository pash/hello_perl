#!/usr/bin/perl
	
chomp(@lines = <STDIN>);

print "1234567890" x7, "12345\n";

for $line (@lines) {
	printf("%20s\n", $line);
}