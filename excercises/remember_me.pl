#!/usr/bin/perl

use strict;

my $ctr = 1;
my $max = 10;

inc(\$ctr, $max);

print "final: $ctr \n";

sub inc {
  my ($ctr, $max) = @_;
  
  inc2($ctr, $max);
}

sub inc2 {
  my ($ctr, $max) = @_;
  
  while ($$ctr < $max) {
    print "test: $$ctr \n";
    $$ctr++;
  }
  
}