#!/usr/bin/perl

use 5.010;

use strict;

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );

sub greet {
	my $name = @_[0];
	state $last_name = '';
	
	if($last_name eq '') {
		print "Hi $name! You are the first one here!\n";
	} else {
		print "Hi $name! $last_name is also here!\n";
	}
	
	$last_name = $name;
}