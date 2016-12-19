package Geo::Coder::GooglePlaces;

use strict;
use warnings;
use Geo::Coder::GooglePlaces::V3;
our $VERSION = '0.02';

sub new {
    my ($self, %param) = @_;
    delete $param{apiver};

    return Geo::Coder::GooglePlaces::V3->new(%param);
}

1;
__END__

=head1 NAME

Geo::Coder::GooglePlaces - Google Maps Geocoding API

=head1 DESCRIPTION

Geo::Coder::GooglePlaces provides a geocoding functionality using Google Maps API.

See L<Geo::Coder::GooglePlaces::V3> for V3 API usage.

=head1 LICENSE

This program is free software; you can redistribute it and/or 
modify it under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
