#!/usr/bin/perl -w
use v5.20;
use experimental qw(signatures);
use strict;

sub greet($personName)
{
    state @personNameArray;


    if (0 == @personNameArray)
    {
        print "Hi $personName\! you are first\n";
    }
    else
    {
        print "Hi $personName\! @personNameArray was coming\n";
    }
    push(@personNameArray, $personName);
}

&greet("john");
&greet("jack");
&greet("Frank");

