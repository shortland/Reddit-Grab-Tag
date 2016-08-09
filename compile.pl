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

my $dbh = DBI->connect("DBI:mysql:database=github; host=localhost", "user", "pass", {'RaiseError' => 1});
my $sth = $dbh->prepare("TRUNCATE reddit");
$sth->execute() or die "Couldn't execute statement: $DBI::errstr; stopped";
$dbh->disconnect();
	
@subreddits = ('all', 'starcraft', 'worldnews', 'interestingasfuck', 'todayilearned', 'Jokes', 'ProgrammerHumor', 'pics', 'gifs'); 
#@subreddits = ('Jokes');
foreach (@subreddits)
{
	write_file('subreddit.txt', $_);
	`curl -s "http://ilankleiman.com/newsfeed/fetchtop.pl?sub="$_`;
	#sleep(1);
	`curl -s "http://ilankleiman.com/newsfeed/parseandinsert.pl?sub="$_`;
	#sleep(1);
	#print $_;
}

print "Updated news :D";