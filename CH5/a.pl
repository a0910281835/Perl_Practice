#!/usr/bin/perl -w
use v5.20;
#use warnings
use experimental qw(signatures);
#use strict;

sub WhileStdin()
{
    # explan : while not using "lsit context"
    my $line;
    while (defined($line = <STDIN>))
    {
        print "w-$line";
    }

}
sub ForEachStdin()
{
    # explan : foreach using "lsit context" ex : foreach (line = array)
    my $line = "a";
    foreach (<STDIN>)
    {
        $line = $_;
        print "f-$line";
    }
}

sub diamondOperation()
{
    my $line;
    while (defined($line = <<>>))
    {
        print "line : $line";
    }
}

sub ComparePrintFunction()
{
    my @array = qw"fred alex ralph ken";
    print @array; # No space
    print"@array";# have space
    print "\n";
}

sub GetInputFileToPrint()
{
    my $CONFIG;
    my $line;
    open $CONFIG,'<', 'alex';

    #print <$CONFIG>;
    while ($line = <$CONFIG>)
    {
        print $line;
    }
}
sub DataGenerate()
{
    my @stringArray = qw" Today is a beatudy for day.";

    return @stringArray;
}

sub GetDataAndOupputToFile($outformat, @inputData)
{
    my $OutPutFileName = 'gred';
    #my @data = qw"you are pretty";
    my @data = @inputData;
    #print $outformat;
    my $pFile;
    my $line;
    if (open $pFile, $outformat, $OutPutFileName)
    {
        foreach $line (@data)
        {
            print $pFile "$line "
        }
        print $pFile "\n";
        #print $pFile @data;

    }
    else
    {
        die "file error and inform : $!\n";
    }
    close $pFile;
}
sub MainCode()
{
    my $CREATE = '>';
    my $COVER  = '>>';
    print "ARGV : @ARGV\n";
    #&WhileStdin();
    #&ForEachStdin();
    #&diamondOperation();
    #&ComparePrintFunction();
    #&GetInputFileToPrint();
    my @data = &DataGenerate();
    &GetDataAndOupputToFile($CREATE, @data);
    &GetDataAndOupputToFile($COVER, @data);
}

&MainCode();
