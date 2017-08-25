#!/usr/bin/perl

@ARGV = qw# tmp/larry tmp/moe tmp/curly #; # force these three files to be read
while (<>) {
	chomp;
	print "It was $_ that I saw!\n";
}