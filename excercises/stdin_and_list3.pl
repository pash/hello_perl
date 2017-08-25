#!/usr/bin/perl

chomp(@lines = <STDIN>);
@lines = sort @lines;

foreach $line (@lines) {
	print "$line\n";
}