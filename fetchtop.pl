#!/usr/bin/perlml

# script to fetch the first (declared max #) of posts from a reddit subreddit

use CGI;
use File::Slurp;

BEGIN
{
	$cgi = new CGI;
	print $cgi->header(-type=>'text/html', -status=>'200 OK');
	open(STDERR, ">&STDOUT");
}

$subLink = read_file('subreddit.txt');
$numberToGet = 6; # maximum 20 - don't want to break anything (curls to first page only, only ≈20 posts on the first page.)
#https://www.reddit.com/r/starcraft/top/?sort=top&t=day
$apiSource = `curl -s "https://api.reddit.com/r/$subLink/top/?t=day"`;
# prepare raw code for snipping
$apiSource =~ s/}}, {"kind":/}}, µ {"kind":/g;
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

		my ($aPost) = ($apiSource =~ /$special[^,]*,([^µ]+)/);

		open(my $fh, '>', 'post' . $done . '.txt');
		print $fh $aPost;
		close $fh;
		$apiSource = "Ωµ".$apiSource;

		$apiSource =~ s/Ω[^µ]*µ([^µ]+)/Ω/;
		$done = $done + 1;

		if($done =~ ($numberToGet + 1))
		{
			return "caught em all".($done - 1)
		}		
		else
		{
NOTDONEYET:
			my ($aPost) = ($apiSource =~ /Ω[^µ]*µ([^µ]+)/);
			open(my $fh, '>', 'post' . $done . '.txt');
			print $fh $aPost;
			close $fh;
			$done = $done + 1;
			$apiSource =~ s/Ω[^µ]*µ([^µ]+)/Ω/;
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









