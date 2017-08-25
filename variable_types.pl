#!/usr/bin/perl

$answer = 42;
$pi = 3.14159265;
$avocados = 6.02e23;
$pet = "Camel";
$sign = "I love my $pet";
$cost = 'It costs $100';
$whence = "whence";
$thence = $whence;
$salsa = $moles * $avocados;
#$exit = system("vi $file");
$cwd = `pwd`;
$camels = '123';
@home = ("couch", "chair", "table", "stove", "$pet");
($home1, $home2, $home3, $home4, $home5) = @home;
$alpha = 'alpha';
$omega = 'omega';
($alpha, $omega) = ($omega, $alpha);

print $answer, "\n";
print $pi, "\n";
print $avocados, "\n";
print $pet, "\n";
print $sign, "\n";
print $cost, "\n";
print $thence, "\n";
print $salsa, "\n";
print $cwd;
print $camels + 1, "\n";
print @home, "\n";
print @home[0], "\n";
print $home5, "\n";
print $alpha, "\n";
print $omega, "\n";
