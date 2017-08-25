#!/usr/bin/perl

use strict;

my %hash = ("a" => 1, "b" => 2, "c" => "three");
my @k = keys %hash;
my @v = values %hash;

print @k . "\n";
print "@k\n";
print @v . "\n";
print "@v\n";

# no interpolation!
print %hash . "\n";
print "%hash\n";