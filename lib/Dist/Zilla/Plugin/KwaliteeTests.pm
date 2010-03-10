use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::KwaliteeTests;
our $VERSION = '1.100690';
# ABSTRACT: release tests for kwalitee
use Moose;
use Test::Kwalitee ();
extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;
no Moose;
1;




=pod

=head1 NAME

Dist::Zilla::Plugin::KwaliteeTests - release tests for kwalitee

=head1 VERSION

version 1.100690

=head1 SYNOPSIS

In C<dist.ini>:

    [KwaliteeTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following files

  xt/release/kwalitee.t - a standard Test::Kwalitee test

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__
___[ xt/release/kwalitee.t ]___
#!perl

use Test::More;

eval "use Test::Kwalitee";
plan skip_all => "Test::Kwalitee required for testing kwalitee"
  if $@;

