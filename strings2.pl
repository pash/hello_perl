#!/usr/bin/perl

use strict;

my @strs = ();
$strs[0] = "Role: Writer";
$strs[1] = "Role: Writer | FlexTemplate Projects Only";
$strs[2] = "FlexTemplate Projects Only | Role: Writer";
$strs[3] = "FlexTemplate Projects Only | Role: Writer | something";
my $role = 'none';

for my $str (@strs) {
	return unless ($str =~ /.*Role:/i);
	
	print "str is: $str \n";
	
	my @split = split('\|', $str);
	
	use Data::Dumper;
	print Dumper(\@split)."\n";
	
	if (scalar(@split) > 1) {
		print "contains more than 1 token \n";
		
		for my $spl (@split) {
			next unless $spl =~ /.*Role:/i;
			
			$role = $spl;
			$role =~ s/.*Role\:\s*//;
		}
		
	} else {
		print "just 1 token \n";
		$role = $split[0];
		$role =~ s/.*Role\:\s*//;
	}
	
	print "role: $role \n";
	
	$role = 'none';
}