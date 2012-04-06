Using Perl’s Net::Twitter to Harvest Keyword Searches
=====================================================

http://healyourchurchwebsite.com/2011/02/26/using-perls-nettwitter-to-harvest-keyword-searches/

## Introduction ##

So you’ve decided to dive into social media marketing on behalf of your church and/or charitable organization.
In fact, you’ve been wisely leveraging bit.ly with Twitter or ow.ly with HootSuite to track and measure your outbound links — but you find yourself in need a more ‘industrial strength‘ means of tracking who is saying what about your organization or an upcoming event.
You also want to speed up your WordPress blog as it’s been gagging when your Twitter RSS feed goes all 503 on you because Ashton Kutcher tweeted about his toenail clippings.


## Recipe for Success ##

As I mentioned in my post last Tuesday entitled ‘Strategy vs. Tactics and your Social Media Activities ,’ I’ve been playing around with some of the cool social networking tools one can find in the CPAN library.
Today I want to provide a quick snippet on how to use the Net::Twitter to write a simple PERL program to harvest a search.
To do this, it mean installing the Net::Twitter library. You’ll likely need root or sudo privileges to make this happen. If you don’t know what root or sudo means, then you’ll want to contact your hosting provider.
That said, once you get it installed, the next step is to go to the Twitter Search page and create an advanced search. From the resulting query string should give you all the parameters you need, for example:

Based on the above example, I created the following script by using the nano editor for a file called ‘eastertweets.pl‘:

## Implementation ##

Once I created the file, it was simply a matter of modifying it to execute, then calling it:

<pre>
chmod a+x eastertweets.pl
$HOME/eastertweets.pl
</pre>

## So Why Bother? ##

Now this approach by itself is a lot of work for little return. However, here are some things you might want to do with the sample above that would provide some big return value:

* feed this into a SQL database history via Perl DBI;
* create comma separated values and pipe it into a running log file;
* aggregate the returns with other searches into a single RSS file on your server for both the sake of speed and feeding localized dashboards;
* grep the returns for other key words, sending email notifications on hot items, while deleting those spammy items that make your feed so noisy;
* create a RESTFul web service that dynamically feeds your WordPress blog of select queries using Ajax via jQuery.

## Epilogue ##

The point is, once the data is captured, you can pretty much do anything you want with it programatically.
For me, I’m thinking it might be fun to grab user IDs and feed their demographic information into some sort of analytics engine; or at least have some fun with Google Maps.
Anyway, enjoy the example. If you expand on it, don’t forget to come back and provide a link. I’d be interested to see how this snippet evolves.