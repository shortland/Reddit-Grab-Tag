#!/usr/bin/perlml

use CGI;
use File::Slurp;
use DBI;

BEGIN
{
	$cgi = new CGI;

	print $cgi->header(-type=>'text/html', -status=>'200 OK');
	open(STDERR, ">&STDOUT");
}

my $dbh = DBI->connect("DBI:mysql:database=github; host=localhost", "username", "password!", {'RaiseError' => 1});
my $sth = $dbh->prepare("SELECT `title`, `content`, `sourcetype` FROM `reddit`");
$sth->execute() or die "Couldn't execute statement: $DBI::errstr; stopped";

while (my $row = $sth->fetchrow_hashref())
{
	#$row->{row};
	
	print "<h3>$row->{title}</h3><br/>";
	if($row->{sourcetype} =~ /^(other)$/)
	{
		print "<iframe src='$row->{content}'>View source!</iframe>";
	}
	else
	{
		print "<p id='hiddenstuff'>$row->{content}</p>";
	}
}
$dbh->disconnect();