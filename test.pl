#!/usr/bin/perl
#
# File: test.pl
# Description: First steps using Test::More. 
# Note: This is just a sandbox, don't expect beautiful code for a while.
#

use Test::More #skip_all => "some reason";
; #this semicolon is intentional

ok(1, "ok = is_true");
is(undef, undef, "is = this is that");
isnt(1, 0, "isnt = this isnt that");
diag("diag prints a message within test");
like("know thyself", qr/thy/, "like = this is like that");
unlike("know thyself", qr/knw/, "unlike = NOT like");

cmp_ok("p1", 'ne', "p2", "cmp_ok = compare p1 with p2 using neq as operator");

my @foo = qw(foo bar);
is_deeply(\@foo, \@foo, "is_deeply is used for complex datastructures comparisons");

SKIP: {
    skip "reason", 2 unless 0;
    ok(0, "this test should fail");
    is(0, 1, "another one that fails");
}

TODO: {
    local $TODO = "why todo?";
    ok(1, "this passes");
}

#BAIL_OUT(0);

done_testing;


