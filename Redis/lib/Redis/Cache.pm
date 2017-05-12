package Redis::Cache;
use strict;
use warnings;
use utf8;

use parent qw/Redis::Fast/;

use Sereal::Encoder;
use Sereal::Decoder;

my $encoder = Sereal::Encoder->new;
my $decoder = Sereal::Decoder->new;
sub _serialize   { $encoder->encode($_[0]) }
sub _deserialize { $decoder->decode($_[0]) }

sub new {
    my ($class, $servers, $namespace) = @_;
    return $class->SUPER::new({
        utf8              => 1,
        servers           => $servers,
        namespace         => $namespace,
        serialize_methods => [\&_serialize, \&_deserialize],
    });
}

1;


