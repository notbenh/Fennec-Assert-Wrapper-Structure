package TEST::Fennec::Assert::Wrapper::Structure;
use strict;
use warnings;
use Fennec;
use Carp::Always;

require_or_skip Test::Structure;

tests load {
    use_ok( 'Fennec::Assert::Wrapper::Structure' );
    can_ok( $self, qw{has_includes
                      has_subs
                      has_comments
                      has_pod
                     });
   
};

