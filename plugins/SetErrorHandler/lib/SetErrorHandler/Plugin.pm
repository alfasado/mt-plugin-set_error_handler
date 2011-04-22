package SetErrorHandler::Plugin;

use strict;

sub _view_log {
    my ( $cb, $app, $param, $tmpl ) = @_;
    my $class_loop = $param->{ class_loop };
    push @$class_loop, { class_name => 'dynamic', class_label => MT->translate( 'Dynamic Error' ) };
    $param->{ class_loop } = $class_loop;
}

1;