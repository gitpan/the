use inc::Module::Install;

name        'the';
all_from    'lib/the.pm';

requires 'Moose';       # You really need the Moose.

WriteAll;
