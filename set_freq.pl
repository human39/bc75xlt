#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

use Uniden::BC75XLT;
use Data::Dumper;

my $radio = Uniden::BC75XLT->new('/dev/ttyUSB0') or die "Cannot open radio: $!\n";
   
say "Connected to radio: [" . $radio->getModelName() . "] Firmware: [" .  $radio->getFirmwareVersion() . "]";

# First Channel Bank, (1 .. 30), Local Channels
say "Loading Bank 1 ...";
$radio->setChannelInfo(1, { freq => '471.862' }); # West Deer PD
$radio->setChannelInfo(2, { freq => '471.562' }); # West Deer VFD 
$radio->setChannelInfo(3, { freq => '471.837' }); # West Deer VFD 

say "Done!";
exit;
