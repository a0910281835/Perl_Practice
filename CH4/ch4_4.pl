#!/usr/bin/perl -w
use v5.20;
use experimental qw(signatures);
use strict;

sub greet($personName)
{
    state @personNameArray;

    push(@personNameArray, $personName);

    if (0 == $#personNameArray)
    {
        print "Hi @personNameArray\! you are first\n";
    }
    else
    {
        print "Hi $personNameArray[$#personNameArray]\! $personNameArray[$#personNameArray-1] was coming\n";
    }
}

&greet("john");
&greet("jack");

