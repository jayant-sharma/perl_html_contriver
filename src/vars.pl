#!/usr/bin/perl

use lib '../lib';
use Hlib;

$OUTFILE = "vars.html";

open($oFH, ">$OUTFILE") or die "Cannot open output file!";
$mFH = select($oFH);

print "$COMMENT This is a html file $eCOMMENT\n";
print "$PREHEAD\n$HEAD\n$TITLE","Separate Variables";
print "$eTITLE\n$eHEAD\n";

#select($mFH);
#print "Handle returned to STDOUT.";
close($oFH);
