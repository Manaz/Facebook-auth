use strict;
use warnings;

use Facebook::Auth;

my $app = Facebook::Auth->apply_default_middlewares(Facebook::Auth->psgi_app);
$app;

