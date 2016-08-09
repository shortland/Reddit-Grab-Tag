#!/usr/bin/perlml

# script to fetch the first (declared max #) of posts from a reddit subreddit

use CGI;
use File::Slurp;

BEGIN
{
	$cgi = new CGI;
	$sub = $cgi->param("sub");
	print $cgi->header(-type=>'text', -status=>'200 OK');
	open(STDERR, ">&STDOUT");
}
$redocount = 0;
$redocount++;
REDOIT:
$subLink = read_file('subreddit.txt');
$numberToGet = 10;
$apiSource = `curl -s "https://api.reddit.com/r/$sub/top/?t=day"`;

$apiSource =~ s/}}, {"kind":/}}, § {"kind":/g;
$special = '{"kind": "t3"';

print snipper($apiSource, 1);

sub snipper 
{
my ($apiSource, $done) = @_;
		# these things seemed to break everything  >.>
		$apiSource =~ s/\#/HASHTAGHASHTAG/g;
		$apiSource =~ s/\*\*/DOUBLESTARDOUBLESTAR/g;
		$apiSource =~ s/\[/OPENBRAKETOPENBRAKET/g;
		$apiSource =~ s/\]/CLOSEBRAKETCLOSEBRAKET/g;

		my ($aPost) = ($apiSource =~ /$special[^,]*,([^§]+)/);

		if(($aPost =~ "")||(!defined $aPost))
		{
			if($redocount =~ 10)
			{
				die "unable to fetch.\n";
			}
			else
			{
				goto REDOIT;
			}
		}
		else
		{
			print "returned something.> $aPost <";
		}

		open(my $fh, '>', 'post' . $done . '.txt');
		print $fh $aPost;
		close $fh;
		#print $aPost;

		#die "here\n";

		$apiSource = "Ω§".$apiSource;

		$apiSource =~ s/Ω[^§]*§([^§]+)/Ω/;
		$done = $done + 1;

		if($done =~ ($numberToGet + 1))
		{
			return "caught em all".($done - 1)
		}		
		else
		{
NOTDONEYET:
			my ($aPost) = ($apiSource =~ /Ω[^§]*§([^§]+)/);
			open(my $fh, '>', 'post' . $done . '.txt');
			print $fh $aPost;
			close $fh;
			$done = $done + 1;
			$apiSource =~ s/Ω[^§]*§([^§]+)/Ω/;
			if($done =~ ($numberToGet + 1))
			{
				return "caught em all".($done - 1)
			}
			else
			{
				goto NOTDONEYET;
			}
		}
}









