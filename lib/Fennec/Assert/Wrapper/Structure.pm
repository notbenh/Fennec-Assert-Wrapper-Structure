package Fennec::Assert::Wrapper::Structure;

use warnings;
use strict;

use Fennec::Assert;
use Fennec::Output::Result;
use Test::Structure;

=head1 NAME

Fennec::Assert::Wrapper::Structure - Fennec wrapper for L<Test::Structure>

=head1 VERSION

Version 0.02

=cut

our $VERSION = '0.02';

for my $name ( qw{has_includes has_subs has_comments has_pod} ) {
    no strict 'refs';
    next unless Test::Structure->can( $name );
    tester( $name => tb_wrapper( \&{ 'Test::Structure::' . $name }));
};

1;                                                                                                                                                                                                                                                                                         

=head1 WRAPPED FUNCTIONS

=over 4

=item has_comments()

=item has_includes()

=item has_pod()

=item has_subs()

=back

=head1 AUTHOR

notbenh, C<< <notbenh at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-fennec-assert-wrapper-structure at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Fennec-Assert-Wrapper-Structure>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Fennec::Assert::Wrapper::Structure

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Fennec-Assert-Wrapper-Structure>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Fennec-Assert-Wrapper-Structure>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Fennec-Assert-Wrapper-Structure>

=item * Search CPAN

L<http://search.cpan.org/dist/Fennec-Assert-Wrapper-Structure/>

=back

=head1 ACKNOWLEDGEMENTS

=head1 LICENSE AND COPYRIGHT

Copyright 2010 notbenh.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

