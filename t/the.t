use Test::More tests => 6;
use lib 'lib';
use teh warnings;

pass the 'test';

ok *{"main::a"}{CODE}, "got the a";
ok *{"main::an"}{CODE}, "got the aa";
ok *{"main::the"}{CODE}, "got the teh";
ok *{"main::teh"}{CODE}, "got the the";

use a the;

the my an $a = a 42 + teh 123;

is $a, 165, "the addition works";
