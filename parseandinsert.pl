#!/usr/bin/perlml

use CGI;
use File::Slurp;
use DBI;

BEGIN
{
	$cgi = new CGI;
	$subreddit = $cgi->param("sub");
	print $cgi->header(-type=>'text/html', -status=>'200 OK');
	open(STDERR, ">&STDOUT");
}

$subreddit = read_file('subreddit.txt');

for $i(1..20)
{
	$text = read_file('post' . $i . '.txt');
	my ($source) = ($text =~ /domain":[^"]*"([^"]+)/);
	if($source =~ /^(self.$subreddit)$/)
	{
		$sourceType = "selftext";
	}
	else
	{
		$sourceType = "other";
	}
	if($sourceType =~ /^(selftext)$/)
	{
		$text =~ s/", "likes":/Ω/g;
		($content) = ($text =~ /selftext":[^"]*"([^Ω]+)/);
	}
	else
	{
		$text =~ s/HASHTAGHASHTAG/#/g;
		$starter = '"url": "http://'.$source;
		($content) = ($text =~ /$starter[^\/]*\/([^"]+)/);
		$content = "http://".$source."/".$content;
		$contentLinkLength = 7 + length($source) + 2;
		if($contentLinkLength >= length($content))
		{
			$starter = '"url": "https://www.'.$source;
			($content) = ($text =~ /$starter[^\/]*\/([^"]+)/);
			$content = "http://".$source."/".$content;
		}
		if($contentLinkLength >= length($content))
		{
			$starter = '"url": "https://'.$source;
			($content) = ($text =~ /$starter[^\/]*\/([^"]+)/);
			$content = "http://".$source."/".$content;
		}
		if($contentLinkLength >= length($content))
		{
			$starter = '"url": "http://www.'.$source;
			($content) = ($text =~ /$starter[^\/]*\/([^"]+)/);
			$content = "http://".$source."/".$content;
		}
	}
	$titleReg = '"quarantine": false, "title": ';
	$text =~ s/", "/",�� "/g;
	my ($title) = ($text =~ /$titleReg[^"]*"([^��]+)/);
	$title =~ s/��//g;
	$title =~ s/",//g;
	$content =~ s/HASHTAGHASHTAG/#/g;

	$permaRack = ', "permalink": ';
	my ($permalink) = ($text =~ /$permaRack[^"]*"([^"]+)/);

	my $dbh = DBI->connect("DBI:mysql:database=github; host=localhost", "username", "password!", {'RaiseError' => 1});
	my $sth = $dbh->prepare("INSERT INTO reddit (title, sub, content, sourcetype, origin) VALUES (?, ?, ?, ?, ?)");
	$sth->execute($title, $subreddit, $content, $sourceType, $permalink) or die "Couldn't execute statement: $DBI::errstr; stopped";
	$dbh->disconnect();

	if (-e "post". ($i+1). ".txt") { }
	else { die "No more posts \n"; }
}