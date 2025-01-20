#!/usr/bin/perl -w
use v5.20;
use experimental qw(signatures);
use strict;

sub calulateAvgFromArray(@numArray)
{
    my $avg;
    my $idx;

    foreach $idx (0..$#numArray)
    {
        $avg += $numArray[$idx];
    }

    if ($#numArray > 0)
    {
        $avg /= ($#numArray+1);
    }
}


my @numArray = (1..5);
my $avg = calulateAvgFromArray(@numArray);
print $avg;

