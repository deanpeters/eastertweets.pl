#!/usr/bin/perl
use Net::Twitter;
use Net::Twitter::Search;
use Scalar::Util 'blessed';

# Just the Search API; exceptions thrown on error
$nt = Net::Twitter->new(traits => [qw/API::Search/]);
eval {
   # Parameters: q, callback, lang, rpp, page, since_id, geocode, show_user
   my $r = $nt->search({
      q=>"\"easter service\" OR \"sunrise service\"",
      lang=>"en",
      geocode=>"35.769804,-78.781622,40mi",
      rpp=>50,
      since=>"2012-03-25"
   });
   for my $status ( @{$r->{results}} ) {
      print "\@$status->{from_user}";
      print "\t$status->{created_at}\n";
      print "\t\t$status->{text}\n";
      print "-----------------------------------------------------\n";
   }
};

if ( my $err = $@ ) {
   die $@ unless blessed $err &amp;&amp; $err->isa('Net::Twitter::Error');
   warn "HTTP Response Code: ", $err->code, "\n",
   "HTTP Message......: ", $err->message, "\n",
   "Twitter error.....: ", $err->error, "\n";
}