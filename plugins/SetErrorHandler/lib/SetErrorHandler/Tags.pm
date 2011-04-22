package SetErrorHandler::Tags;

use strict;

sub _hdlr_set_error {
    my ( $ctx, $args, $cond ) = @_;
    $ctx->stash( 'builder' )->build( $ctx, $ctx->stash( 'tokens' ), $cond );
}

sub _hdlr_error {
    my ( $ctx, $args, $cond ) = @_;
    my $message = $args->{ message };
    return $ctx->error( $message );
}

1;