use Test::More tests => 4;

use strict;
use warnings;

BEGIN {
	use_ok( 'Text::Normalize::NACO' );
}

Text::Normalize::NACO->import( 'naco_normalize' );

my $naco = Text::Normalize::NACO->new;
isa_ok( $naco, 'Text::Normalize::NACO' );

my $original = ' abc ';

is( naco_normalize( $original ), 'ABC', 'naco_normalize()' );
is( $naco->normalize( $original ), 'ABC', 'normalize()' );

