#!/usr/bin/perl -w
use v5.20;
use experimental qw(signatures);
use strict;

sub total(@numArray)
{
    my $sum;
    my $idx = 0;
    foreach $idx (0..$#numArray)
    {
        #print "num : $numArray[$idx]\n";
        $sum += $numArray[$idx];
    }
   return $sum;
}
#main code
my @numArray = (1, 3, 5, 7, 9);
my $sum = &total(@numArray);
print "sum : $sum\n";
print "Input Num :\n";
my $stdinsum = &total(<STDIN>);
print "$stdinsum\n";

