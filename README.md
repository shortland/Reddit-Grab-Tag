# Reddit-Grab-Tag

# No longer works. I also made this before I knew what JSON was and how to handle it. I am looking foward to rewriting this eventually :)

Using Reddit’s API;

~Working example: http://ilankleiman.com/newsfeed/fetch.pl~

Basically functions as a simplified "front" page; I'm not sure about most people, but I'm subscribed to a lot of subreddits, hence my front page is useless and basically acts like an "all" page. Which is why I initially made this.

Grabs top 6 (can be changed) posts within the past 24 hours (can be changed) of a 1 or multiple subreddits.

After grabbing the page source, crops out each of the 6 posts into seperate files. 

Grabs out the title, content, and other variables from the post.
Inserts that information into the database so it can be more easily & quickly retrieved.

fetch.pl grabs that data and spits it all out in some simple html. (you're meant to change that to your liking)
