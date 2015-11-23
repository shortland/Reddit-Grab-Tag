#!/usr/bin/perl

use CGI;
use File::Slurp;

$subreddit = "starcraft";

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
	}
	$titleReg = '"title": ';
	my ($title) = ($text =~ /$titleReg[^"]*"([^"]+)/);


	print $title."\n".$sourceType."\n".$content."\n\n\n";


	if (-e "post". ($i+1). ".txt") { }
	else { die "No more posts \n"; }
}