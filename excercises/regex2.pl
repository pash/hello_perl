#!/usr/bin/perl
# perl regex2.pl tmp/find_period

use strict;

while (<>) {
  chomp;
  if (/\./) {
 	  print "$_\n";
 	}
}