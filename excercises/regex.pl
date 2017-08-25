#!/usr/bin/perl
# perl regex.pl tmp/find_fred

use strict;

while (<>) {
  chomp;
  if (/[fF]red/) {
 	  print "$_\n";
 	}
}