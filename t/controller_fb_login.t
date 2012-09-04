use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Facebook::Auth';
use Facebook::Auth::Controller::fb_login;

ok( request('/fb_login')->is_success, 'Request should succeed' );
done_testing();
