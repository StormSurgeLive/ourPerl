#!/usr/bin/env perl
use strict;
use warnings;
use FindBin qw/$Bin/;
use lib "$Bin/..";
use StwaveUtils::StwaveObj;


my $umag=22.0;
my $udir=-48;

my $simfile='SW.sim';


my $stw=StwaveObj->newFromSim($simfile);

$stw->writeConstWindFile ($umag,$udir,'project.wind.in');
