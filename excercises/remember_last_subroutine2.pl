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
		$last_name = $name;
	} else {
		print "Hi $name! I've seen $last_name!\n";
		$last_name = $last_name . ' ' . $name;
	}
}