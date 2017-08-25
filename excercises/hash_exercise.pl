#!/usr/bin/perl

use strict;

my %names = ("fred" => "flintstone", "barney" => "rubble", "wilma" => "flintstone");

chomp(my $first_name = <STDIN>);

#print "last name of $first_name is $names{$first_name}\n";