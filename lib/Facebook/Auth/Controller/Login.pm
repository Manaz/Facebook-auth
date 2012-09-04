package Facebook::Auth::Controller::Login;
use Moose;
use namespace::autoclean;
use LWP::Simple;
use JSON;


BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Facebook::Auth::Controller::Login - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

Get the facebook data

=cut

sub fb_login :Chained('/') :Args(1) {
    my ( $self, $c , $uid ) = @_;

    my $url = "https://graph.facebook.com/".$uid;
	my $content = get($url);
    my $json = JSON->new->pretty;
 	my $json_object = $json->decode($content);
	$c->stash->{fb_name} = $json_object->{name};
	$c->stash->{fb_url} = 'http://www.facebook.com/'.$json_object->{username};
    $c->stash->{pic_url} = 'http://graph.facebook.com/'.$uid.'/picture';
    $c->stash->{template} = 'templates/fb_login.tt';
}


=head2 index

Facebook logout

=cut


sub fb_logout :Chained('/') {
    my ( $self, $c ) = @_;
    $c->res->redirect('/');
}

=head1 AUTHOR

Manaz,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
