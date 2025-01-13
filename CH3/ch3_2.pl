#!/usr/bin/perl -w

@strArray = qw(fred betty barney dino wilma pebbles bamm-bamm);

# ---- process start-----
print "$strArray[0], $#strArray\n";
@strNumArray = <STDIN>;
chomp(@strNumArray);
foreach $num (@strNumArray)
{
    if ($num < $#strArray)
    {
        print "$strArray[$num-1]\n";
    }
    else
    {
        print "error input : $num\n";
    }
}

