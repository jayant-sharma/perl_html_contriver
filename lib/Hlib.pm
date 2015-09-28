package Hlib;

require Exporter;
@ISA = qw(Exporter);

BEGIN {print "Module: ",__PACKAGE__, "\n";}
END {print "Endmodule: ",__PACKAGE__, "\n";}

###################################################################
$l1 = "\t";
$l2 = "$l1$l1";
$l3 = "$l1$l2";
$l4 = "$l2$l2";
$l5 = "$l2$l3";
$l5 = "$l3$l3";

###################################################################
# HTML Tags with indentation
###################################################################
$HEADING        = "<h1 align=center style=\"font-size:18pt; font-family:arial;\">";
$eHEADING       = "</h1>";
$PREHEAD        = "<!DOCTYPE HTML>\n<html>";
$ePREHEAD       = "</html>";
$HEAD           = "$l1<head>";
$eHEAD          = "$l1</head>";
$TITLE          = "$l2<title>";
$eTITLE         = "$l2</title>";
$BODY           = "$l1<body>";
$eBODY          = "$l1</body>";
$TABLE          = "$l2<table border=1 bgcolor=#D0E6FF cellpadding=2 cellspacing=0
                        bordercolor=black width=95% align=center position=top
                        style=\"font-size:10pt; font-family:arial;\">";
$eTABLE         = "$l2</table>";
$TBLHEAD        = "$l3<thead>\n$l4<tr>";
$eTBLHEAD       = "$l4</tr>\n$l3</thead>";
$TBLHDATA       = "$l5<th style=\"background-color:azure; text-align:center\" ";
$eTBLHDATA      = "</th>";
$TBLBODY        = "$l3<tbody>";
$eTBLBODY       = "$l3</tbody>";
$TBLROW         = "$l4<tr>";
$eTBLROW        = "$l4</tr>";
$TBLBDATA       = "$l5<td style=\"background-color:ghostwhite; ";
$eTBLBDATA      = "</td>";
$COMMENT        = "<!--";
$eCOMMENT       = "-->";

###################################################################
@EXPORT = qw(	$PREHEAD $ePREHEAD $HEAD $eHEAD $TITLE $eTITLE
		$BODY $eBODY $TABLE $eTABLE $TBLHEAD $eTBLHEAD
		$TBLHDATA $eTBLHDATA $TBLBODY $eTBLBODY $TBLBDATA
		$eTBLBDATA $COMMENT $eCOMMENT);
1;
