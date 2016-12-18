#!/usr/bin/env perl

use strict;
use warnings;

use Test::Number::Delta within => 1e-4;
use Test::Most tests => 4;
use Test::NoWarnings;

BEGIN {
	use_ok('Geo::Coder::GooglePlaces');
}

RT119288: {
	my $coder = Geo::Coder::GooglePlaces->new(key => $ENV{'GMAP_KEY'});
	my $location = $coder->geocode(location => 'Wisdom Hospice, High Bank, Rochester, Kent, England');
	# my $location = $coder->geocode(location => 'Wisdom Hospice High Bank Rochester Kent England');
	delta_ok($location->{geometry}{location}{lat}, 51.372563);
	delta_ok($location->{geometry}{location}{lng}, 0.5093407);
}
