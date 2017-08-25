#!/usr/bin/perl

print "Enter first number: ";
chomp($first = <STDIN>);

print "Enter second number: ";
chomp($second = <STDIN>);

$prod = $first * $second;
print "product is: $prod\n";