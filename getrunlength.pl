$count=0;

while ( <> ) {

	#print $_;
	$str = $_;
	$movie="";
	
	if ($str=~ /(\"title.*? views\"\}\}\})/ ) {
		#print $_;
		print "shashiiiiiiiiiiiiiiiiiiii $count $1\n";
		$movie=$1;
	        
		
	}
	$count++;
	print ("after $count \n");
}

exit();
$str = "<xxxx location=\"file path/level1/level2\" xxx some=\"cxvsdvsd\">";
print "$str\n";

if (  $str =~ m/.location="(.*?)\"/ ) {
	print "matched string is  $1\n\n"
}

$str="\"title\":{\"runs\":[{\"text\":\"Andrea Bocelli - Amapola - Live From Lake Las Vegas Resort, USA / 20    06\"}],\"accessibility\":{\"accessibilityData\":{\"label\":\"Andrea Bocelli - Amapola - Live From Lake Las Vegas Resort, USA / 2    006 by Andrea Bocelli 5 years ago 3 minutes, 46 seconds 3,562,427 views\"}}},\"long 59 minutes, 46 seconds 3,562,427 views\"}}}";

if ($str=~ /(\"title.*? views\"\}\}\})/ ) {
	print "$1\n\n";
}
#	if ($str=~ /(\"title.*? views\"\}\}\})/ ) {

(\"title.*? views\"\}\}\})
a

perl -lane 'print $1 while ( m/(\"title.*? views\"\}\}\})/g)' <amapola.txt 

