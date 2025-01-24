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

sub aboveAverage(@numArray)
{
    my $avg = &calulateAvgFromArray(@numArray);
    my @aboveNumArray;
    my $num;
    foreach $num (@numArray)
    {
        if ($num > $avg)
        {
            push(@aboveNumArray, $num);
        }

    }

    return @aboveNumArray;
}

my @numArray = (1..10);
my $avg = calulateAvgFromArray(@numArray);
print "$avg\n";
my @aboveArray = aboveAverage(@numArray);
print "@aboveArray\n";

