#!/usr/bin/perl -w

print "Get your number\n";
@strArray = <STDIN>;
chomp(@strArray);

#print reverse@strArray;
@reverseIdx = reverse(0 .. $#strArray);
#print @reverseIdx;
print "Resverse your ouput\n";
foreach $strIdx (@reverseIdx)
{
    print "$strArray[$strIdx]\n";
}

