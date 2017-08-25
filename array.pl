#!/usr/bin/perl

$rocks[0] = 'bedrock'; 
$rocks[1] = 'slate'; 
$rocks[2] = 'lava'; 
$rocks[3] = 'crushed rock'; 
$rocks[99] = 'schist';
print $#rocks . "\n";

@people = qw( fred barney betty ); 
@sorted = sort @people; # list context: barney, betty, fred 
$number = 42 + @people; # scalar context: 42 + 3 gives 45
print @people;
print "@people" . "\n";
print "@sorted" ."\n";
print $number . "\n";