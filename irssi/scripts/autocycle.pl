# Usage: /SET auto_regain_ops [On/Off]
#        /autocycle

use strict;
use vars qw($VERSION %IRSSI);

use Irssi 20020313 qw( settings_add_bool settings_get_bool servers command_bind timeout_add );
$VERSION = "0.4";
%IRSSI = (
   authors      => "Marcin Rozycki",
   contact      => "derwan\@irssi.pl",
   name         => "autocycle",
   description  => "Auto regain ops in empty opless channels",
   url          => "http://derwan.irssi.pl",
   license      => "GNU GPL v2",
   changed      => "Fri Jan  3 23:20:06 CET 2003"
);

sub check_channels {
   foreach my $server (servers) {
          $server->command("msg *status connect"); 
   }
}

sub autocycle {
      check_channels();
}

settings_add_bool "misc", "auto_regain_ops", 1;
command_bind "autocycle", "check_channels";

