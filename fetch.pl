#!/usr/bin/perlml

use CGI;
use File::Slurp;
use DBI;
use MIME::Base64;

BEGIN
{
	$cgi = new CGI;
	print $cgi->header(-type=>'text/html', -status=>'200 OK');
	open(STDERR, ">&STDOUT");
}

print qq
{
<!DOCTYPE HTML>
<html>
<head>
	<title>Routine</title>
	<meta name='viewport' content='initial-scale=1.0, user-scalable=no, width=device-width, height=device-height' minimal-ui/>
	<script type='text/javascript' src='js/jquery.js'></script>
	<script type='text/javascript' src='js/jquery_colors.js'></script>
	<script type='text/javascript' src='js/script.js'></script>
	<script type='text/javascript' src='js/countdown.js'></script>
	<script type='text/javascript' src='../ilankleiman.com/js/fastclick.js'></script>
	<!--<script type="text/javascript" src='js/circles.js'></script>-->
	<!--<link rel="stylesheet" type="text/css" href="css/circles.css"/>-->
	<link rel='stylesheet' type='text/css' href='css/style.css'/>
</head>
<body>
<div id='prettybg'></div>
<center><h3> Routine </h3></center>
<div style='width:100%;height:1px;background-color:black;'></div><br/>
<center><div id='refreshit' style='color:blue;'>[ Refresh | Begin ]</div><div id='refreshing' style='color:green;display:none;'>== UPDATING CONTENT ==<div id='refreshingLoad'></div></div><br/><a href="Pandora://">[ Launch Pandora ]</a><br/><br/><div id='countdown'>:</div><br/></center>
<div style='width:100%;height:1px;background-color:black;'></div><br/>
<div id='allContent'>
};

my $dbh = DBI->connect("DBI:mysql:database=github; host=localhost", "user", "pass", {'RaiseError' => 1});
my $sth = $dbh->prepare("SELECT `title`, `content`, `sourcetype`, `origin`, `sub` FROM `reddit`");
$sth->execute() or die "Couldn't execute statement: $DBI::errstr; stopped";

while (my $row = $sth->fetchrow_hashref())
{
	$bgdepen = "sub_".$row->{sub};
	print "<div class='posts $bgdepen'>";
	print "<span style='color:red;'>&nbsp;[r/$row->{sub}]</span><br/>";
	$titleNewC = $row->{title};
	$titleNewC =~ s/\\//g;
	print "<div class='postTitle' id='" . $row->{origin} . "' style='padding:10px;'>".$titleNewC."</div><br/>";
	if($row->{sourcetype} =~ /^(other)$/)
	{
		$linkB = encode_base64($row->{content}, '');
		$linkB =~ s/=//g;
		print "<center>";
		print "<div class='linkContent' id='" . $linkB . "' style='color:blue;'>Open Link</div><br/>";
		print "<div class='linkContent' id='" . $linkB . "_next'></div>";
		print "</center>";
	}
	else
	{
		$textNewC = $row->{content};
		$textNewC =~ s/\\n/<br\/>/g;
		$textNewC =~ s/\\//g;
		print "<div class='textContent' style='padding: 20px;'>".$textNewC."</div>";
	}
	print "</div><br/>";
}
$dbh->disconnect();
print qq
{
</div>
</body>
</html>
};