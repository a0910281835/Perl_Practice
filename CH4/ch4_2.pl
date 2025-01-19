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

sub creasteNum1ToNum2($num1, $num2)
{
    my @numArray;

    if ($num1 <= $num2)
    {
        @numArray = ($num1..$num2);
    }
    else
    {
        @numArray = ($num2..$num1);
    }
    return @numArray;
}
#main code
print "Please Input two number, and we calulate sum of n1 incrasing to n2\n";
my @twoNumArray = (<STDIN>);
#print "@twoNumArray\n";
my @numArray = &creasteNum1ToNum2($twoNumArray[0], $twoNumArray[1]);
my $sum = &total(@numArray);
print "total sum : $sum\n";
