package the;
use 5.006001;
our $VERSION = '0.10';

sub import {
    my $package = caller;
    *{"${package}::the"} = \&the;
    *{"${package}::teh"} = \&the;
    my ($class, $module) = @_;
    if ($module) {
        eval "require $module";
        die $@ if $@;
        splice @_, 0 ,1;
        goto &{"${module}::import"};
    }
}

sub the {
    return wantarray ? @_ : $_[0];
}

package teh;

*import = \&the::import;

1;

=head1 NAME

the - This is teh, best module evar!

=head1 SYNOPSIS

    use the Moose;

    has teh stuffz => (is => the 'rw');

    the my the $a = teh $b + the $c;

=head1 DESCRIPTION

teh module exports the subroutine and the module exports teh subroutine.
Just use the module, then use teh subroutine.

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2008. Ingy döt Net.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut
