#!/usr/bin/perl

use strict;

chomp(my @words = <STDIN>);
@words = sort @words;

my %hash = ();

foreach my $word (@words) {
  $hash{$word} += 1;
}

while ((my $key, my $value) = each %hash) {
  print "$key => $value\n";
}

print "sorted---------\n";

#sorted
foreach my $key1 (sort keys %hash) {
  print "$key1 => $hash{$key1}\n";
}

