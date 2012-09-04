use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Facebook::Auth';
use Facebook::Auth::Controller::Login;

ok( request('/login')->is_success, 'Request should succeed' );
done_testing();
