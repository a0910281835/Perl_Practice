#!/usr/bin/perl -w

# Loading keyboard string

@strArray = <STDIN>;
chomp(@strArray);

#Condition1 : \n
#Condition2 : wo \n

print "\n";
@sortedArray1 = sort(@strArray);

foreach $str (@sortedArray1)
{
    print "$str\t";
}

print "\n";
@sortedArray2 = sort(@strArray);
foreach $str (@sortedArray2)
{
    print "$str\n";
}

