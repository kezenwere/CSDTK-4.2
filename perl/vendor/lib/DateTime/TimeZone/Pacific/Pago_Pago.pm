# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/CIqDbkmfat/australasia.  Olson data version 2016j
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Pago_Pago;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.09';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Pago_Pago::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59279944968, #      utc_end 1879-07-04 11:22:48 (Fri)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59279990400, #    local_end 1879-07-05 00:00:00 (Sat)
45432,
0,
'LMT',
    ],
    [
59279944968, #    utc_start 1879-07-04 11:22:48 (Fri)
60273804168, #      utc_end 1911-01-01 11:22:48 (Sun)
59279904000, #  local_start 1879-07-04 00:00:00 (Fri)
60273763200, #    local_end 1911-01-01 00:00:00 (Sun)
-40968,
0,
'LMT',
    ],
    [
60273804168, #    utc_start 1911-01-01 11:22:48 (Sun)
62048804400, #      utc_end 1967-04-01 11:00:00 (Sat)
60273764568, #  local_start 1911-01-01 00:22:48 (Sun)
62048764800, #    local_end 1967-04-01 00:00:00 (Sat)
-39600,
0,
'NST',
    ],
    [
62048804400, #    utc_start 1967-04-01 11:00:00 (Sat)
62574721200, #      utc_end 1983-11-30 11:00:00 (Wed)
62048764800, #  local_start 1967-04-01 00:00:00 (Sat)
62574681600, #    local_end 1983-11-30 00:00:00 (Wed)
-39600,
0,
'BST',
    ],
    [
62574721200, #    utc_start 1983-11-30 11:00:00 (Wed)
DateTime::TimeZone::INFINITY, #      utc_end
62574681600, #  local_start 1983-11-30 00:00:00 (Wed)
DateTime::TimeZone::INFINITY, #    local_end
-39600,
0,
'SST',
    ],
];

sub olson_version {'2016j'}

sub has_dst_changes {0}

sub _max_year {2026}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

