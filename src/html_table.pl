#!/usr/bin/perl

use lib '../lib';
use Hlib;
use Getopt::Long;
use Getopt::Std;

my ($help,$in,$out);

GetOptions (
  "help"=>\$help,
  "out=s"=>\$out
);

if($help) {
  print "Usage: ./html_table.pl -out <output_file>\n";
  exit(0);
}

if($out ne ""){
  $OUTFILE = "$out.html"; }
else { $OUTFILE = "table.html"; }

open($oFH, ">$OUTFILE") or die "Cannot open output file!";
$mFH = select($oFH);

########################################################################
# Writing to HTML file
########################################################################
print "$COMMENT This is a html file $eCOMMENT\n";
print "$HEADING","<strong>TABLE</strong>","$eHEADING\n";
print "$PREHEAD\n$HEAD\n$TITLE","Table";
print "$eTITLE\n$eHEAD\n";
print "$BODY\n$TABLE\n$TBLHEAD\n";
@WIDTH = (5,25,10,60);
print "$TBLHDATA","width=\"",$WIDTH[0],"%\" height=\"40\">S.No.","$eTBLHDATA\n";
print "$TBLHDATA","width=\"",$WIDTH[1],"%\">COL1","$eTBLHDATA\n";
print "$TBLHDATA","width=\"",$WIDTH[2],"%\">COL2","$eTBLHDATA\n";
print "$TBLHDATA","width=\"",$WIDTH[3],"%\">COL3","$eTBLHDATA\n";
print "$eTBLHEAD\n$TBLBODY\n";

#foreach row : write row data
#create_row($data0,$data1,$data2,$data3);

select($mFH);
print "Handle returned to STDOUT.";
close($oFH);

sub create_row {
  my $ser = shift;
  my @col_data = @_;
  print "$TBLROW\n";
  print "$TBLBDATA","text-align:center\" width=\"",$WIDTH[0],"%\">$ser","$eTBLBDATA\n";
  my $i = 1;
  foreach $elem (@col_data) {
    print "$TBLBDATA","\" width=\"",$WIDTH[$i++],"%\">$elem","$eTBLBDATA\n";
  }
  print "$eTBLROW\n";
}

