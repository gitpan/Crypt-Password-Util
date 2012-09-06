package Crypt::Password::Util;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.01'; # VERSION

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(looks_like_crypt);

my $b64d = qr![A-Za-z0-9./]!;

sub looks_like_crypt {
    my ($str) = @_;
    $str =~ m#\A(?:
                  (?: \$ (?:apr)?1 \$ $b64d {0,8} \$ $b64d {22} ) |
                  (?: \$ 6         \$ $b64d {0,8} \$ $b64d {86} )
              )\z#sx;
}

1;
# ABSTRACT: Crypt password utilities


__END__
=pod

=head1 NAME

Crypt::Password::Util - Crypt password utilities

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 use Crypt::Password::Util qw(looks_like_crypt);
 say looks_like_crypt('$6$4DdvgCFk$...');            # 1
 say looks_like_crypt('$1$$GmbL3iXOMZR57QuGDLv.L1'); # 1
 say looks_like_crypt('foo');                        # 0

=head1 FUNCTIONS

=head2 looks_like_crypt($str) => BOOL

Return true if C<$str> looks like a crypted password.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

