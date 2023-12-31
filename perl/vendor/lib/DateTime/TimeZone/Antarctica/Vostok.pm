# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/CIqDbkmfat/antarctica.  Olson data version 2016j
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Antarctica::Vostok;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.09';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Antarctica::Vostok::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
61755609600, #      utc_end 1957-12-16 00:00:00 (Mon)
DateTime::TimeZone::NEG_INFINITY, #  local_start
61755609600, #    local_end 1957-12-16 00:00:00 (Mon)
0,
0,
'-00',
    ],
    [
61755609600, #    utc_start 1957-12-16 00:00:00 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
61755631200, #  local_start 1957-12-16 06:00:00 (Mon)
DateTime::TimeZone::INFINITY, #    local_end
21600,
0,
'+06',
    ],
];

sub olson_version {'2016j'}

sub has_dst_changes {0}

sub _max_year {2026}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

