#!/usr/bin/perl -w
use utf8 ;

# Simple script to convert csv to xml
# For input/outpus examples, see below.


print STDOUT "<r>\n";

while (<>) 
{
	chomp ;
	my ($lemma, $POS, $stem, $contlex) = split /\t/ ;
	print STDOUT "   <e>\n";
	print STDOUT "      <lg>\n";
	print STDOUT "         <l pos=\"$POS\">$lemma</l>\n";
	print STDOUT "         <stg>\n";
	print STDOUT "            <st Contlex=\"$contlex\">$stem</st>\n";
	print STDOUT "         </stg>\n";
	print STDOUT "      </lg>\n";
	print STDOUT "      <mg>\n";
	print STDOUT "         <tg xml:lang=\"fin\">\n";
	print STDOUT "            <t pos=\"$POS\"></t>\n";
	print STDOUT "         </tg>\n";
	print STDOUT "      </mg>\n";
	print STDOUT "   </e>\n";
}

print STDOUT "</r>\n";



# Example input:
#
# aampumakenttä	N	skytefelt


#Target output:
#
#   <e src="yr">
#      <lg>
#         <l pos="N">aampumakenttä</l>
#      </lg>
#      <mg>
#         <tg>
#            <t pos="N" gen="x">skytefelt</t>
#         </tg>
#      </mg>
#   </e>
#

