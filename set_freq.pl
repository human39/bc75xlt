use strict;
use warnings;
use feature 'say';

use Uniden::BC75XLT;
use Data::Dumper;

my $radio = Uniden::BC75XLT->new('/dev/ttyUSB0') or die "Cannot open radio: $!\n";
   
say "Connected to radio: [" . $radio->getModelName() . "] Firmware: [" .  $radio->getFirmwareVersion() . "]";

# First Channel Bank, (1 .. 30), Local Channels
say "Loading Bank 1, local public services ...";
$radio->setChannelInfo(1, { freq => '471.862' }); # West Deer PD
$radio->setChannelInfo(2, { freq => '471.562' }); # West Deer VFD 
$radio->setChannelInfo(3, { freq => '471.837' }); # West Deer VFD 

say "Loading Bank 2, HAM radio reapers ...";

# WA3UQD, WAN Repeater System node 27635 - http://www.wanrepeater.net/
$radio->setChannelInfo(31, { freq => '145.290' });

# K3MJW, Skyview Radio Society - http://www.skyviewradio.net/
$radio->setChannelInfo(32, { freq => '146.640' });

# W3EXW, North Hills Amateur Radio Club, http://nharc.org/
$radio->setChannelInfo(33, { freq => '147.090' });
$radio->setChannelInfo(34, { freq => '146.880' });
$radio->setChannelInfo(35, { freq => '444.400' });
$radio->setChannelInfo(36, { freq => '444.350' });
$radio->setChannelInfo(37, { freq => '224.100' });
$radio->setChannelInfo(38, { freq => '146.820' });


# K3PSG, BUTLER COUNTY AMATEUR RADIO 
$radio->setChannelInfo(39, { freq => '147.30000' });
$radio->setChannelInfo(40, { freq => '443.90000' });


# Simplex Calling
$radio->setChannelInfo(62, { freq => '146.520' });
$radio->setChannelInfo(63, { freq => '446.000' });

# FRS/GMRS
$radio->setChannelInfo(90, { freq => '462.5500' });
$radio->setChannelInfo(91, { freq => '462.5625' });
$radio->setChannelInfo(92, { freq => '462.5750' });
$radio->setChannelInfo(93, { freq => '462.5875' });
$radio->setChannelInfo(94, { freq => '462.6000' });
$radio->setChannelInfo(95, { freq => '462.6125' });
$radio->setChannelInfo(96, { freq => '462.6250' });
$radio->setChannelInfo(97, { freq => '462.6375' });
$radio->setChannelInfo(98, { freq => '462.6500' });
$radio->setChannelInfo(99, { freq => '462.6625' });
$radio->setChannelInfo(100, { freq => '462.6750' });
$radio->setChannelInfo(101, { freq => '462.6875' });
$radio->setChannelInfo(102, { freq => '462.7000' });
$radio->setChannelInfo(103, { freq => '462.7125' });
$radio->setChannelInfo(104, { freq => '462.7250' });
$radio->setChannelInfo(105, { freq => '467.5625' });
$radio->setChannelInfo(106, { freq => '467.5875' });
$radio->setChannelInfo(107, { freq => '467.6125' });
$radio->setChannelInfo(108, { freq => '467.6375' });
$radio->setChannelInfo(109, { freq => '467.6625' });
$radio->setChannelInfo(110, { freq => '467.6875' });
$radio->setChannelInfo(111, { freq => '467.7125' });

# CB 
$radio->setChannelInfo(261, { freq => '26.965' });
$radio->setChannelInfo(262, { freq => '26.975' });
$radio->setChannelInfo(263, { freq => '26.985' });
$radio->setChannelInfo(264, { freq => '27.005' });
$radio->setChannelInfo(265, { freq => '27.015' });
$radio->setChannelInfo(266, { freq => '27.025' });
$radio->setChannelInfo(267, { freq => '27.035' });
$radio->setChannelInfo(268, { freq => '27.055' });
$radio->setChannelInfo(269, { freq => '27.065' });
$radio->setChannelInfo(270, { freq => '27.075' });
$radio->setChannelInfo(271, { freq => '27.085' });
$radio->setChannelInfo(272, { freq => '27.105' });
$radio->setChannelInfo(273, { freq => '27.115' });
$radio->setChannelInfo(274, { freq => '27.125' });
$radio->setChannelInfo(275, { freq => '27.135' });
$radio->setChannelInfo(276, { freq => '27.155' });
$radio->setChannelInfo(277, { freq => '27.165' });
$radio->setChannelInfo(278, { freq => '27.175' });
$radio->setChannelInfo(279, { freq => '27.185' });
$radio->setChannelInfo(280, { freq => '27.205' });
$radio->setChannelInfo(281, { freq => '27.215' });
$radio->setChannelInfo(282, { freq => '27.225' });
$radio->setChannelInfo(283, { freq => '27.255' });
$radio->setChannelInfo(284, { freq => '27.235' });
$radio->setChannelInfo(285, { freq => '27.245' });
$radio->setChannelInfo(286, { freq => '27.265' });
$radio->setChannelInfo(287, { freq => '27.275' });
$radio->setChannelInfo(288, { freq => '27.285' });
$radio->setChannelInfo(289, { freq => '27.295' });
$radio->setChannelInfo(290, { freq => '27.305' });
$radio->setChannelInfo(291, { freq => '27.315' });
$radio->setChannelInfo(292, { freq => '27.325' });
$radio->setChannelInfo(293, { freq => '27.335' });
$radio->setChannelInfo(294, { freq => '27.345' });
$radio->setChannelInfo(295, { freq => '27.355' });
$radio->setChannelInfo(296, { freq => '27.365' });
$radio->setChannelInfo(297, { freq => '27.375' });
$radio->setChannelInfo(298, { freq => '27.385' });
$radio->setChannelInfo(299, { freq => '27.395' });
$radio->setChannelInfo(300, { freq => '27.405' });

say "Done!";
exit;
