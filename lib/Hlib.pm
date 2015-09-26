package Hlib;

require Exporter;
@ISA = qw(Exporter);

BEGIN {print "Module: ",__PACKAGE__, "\n";}
END {print "Endmodule: ",__PACKAGE__, "\n";}

$l1 = "\t";
$l2 = "$l1$l1";
$l3 = "$l1$l2";
$l4 = "$l2$l2";
$l5 = "$l2$l3";
$l5 = "$l3$l3";

###################################################################
# HTML Tags with indentation
###################################################################
$PREHEAD 	= "<!DOCTYPE HTML>\n<html>";
$ePREHEAD 	= "</html>";
$HEAD 		= "$l1<head>";
$eHEAD 		= "$l1</head>";
$TITLE 		= "$l2<title>";
$eTITLE 	= "</title>";
$BODY 		= "$l1<body>";
$eBODY 		= "$l1</body>";
$TABLE 		= "$l2<table >";
$eTABLE 	= "$l2</table>";
$TBLHEAD 	= "$l3<thead>\n$l4<tr>";
$eTBLHEAD 	= "$l4<tr>\n$l3<thead>";
$TBLHDATA 	= "$l5<th>";
$eTBLHDATA 	= "$l5</th>";
$TBLBODY 	= "$l3<tbody>\n$l4<tr>";
$eTBLBODY 	= "$l4<tr>\n$l3<tbody>";
$TBLBDATA 	= "$l5<td>";
$eTBLBDATA 	= "$l5</td>";
$COMMENT	= "<!--";
$eCOMMENT	= "-->";

@EXPORT = qw($PREHEAD $ePREHEAD $HEAD $eHEAD $TITLE $eTITLE
			 $BODY $eBODY $TABLE $eTABLE $TBLHEAD $eTBLHEAD
			 $TBLHDATA $eTBLHDATA $TBLBODY $eTBLBODY $TBLBDATA
			 $eTBLBDATA $COMMENT $eCOMMENT);
1;
