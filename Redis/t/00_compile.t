use strict;
use warnings;
use Test::More;


use Redis;
use Redis::Web;
use Redis::Web::View;
use Redis::Web::ViewFunctions;

use Redis::DB::Schema;
use Redis::Web::Dispatcher;


pass "All modules can load.";

done_testing;
