#!/usr/bin/perl

use Modern::Perl;
use utf8;

# a string
my $name = 'Anakin';

# another string with double quotes
my $vita = "bella";

# double quotes interpolates
my $jedi = "$name Skywalker";


# a heredoc
my $heredoc =<<'END';
---------------------------
May the force be with you.
---------------------------
END
print $heredoc;


# a heredoc with interpolation
my $other_hd =<<"END";
---------------------------
May the force be with you, $jedi!
---------------------------
END
print $other_hd;


# default is to interpolate, 
# no need for double quotes
my $another_hd =<<END;
---------------------------
May the force be with you, $jedi!
---------------------------
END
print $another_hd;


# encoding
use utf8;
my $açaí = "#901a2a";
say $açaí;


# numbers
my $integer = 3;
my $float = 3.14;
my $sci_float = 314e-2;
my $binary = 0b00110;
my $octal = 042;
my $hex = 0x20;
my $big_num = 100_000_000_000_000_000;

use Scalar::Util;
use Test::More tests => 2;
ok Scalar::Util::looks_like_number $integer, 'right?';


my $undef; # = undef;
is $undef, undef, 'declared but not initialized is undef';

# should produce a warning
my $warning = $undef . "concatenating with undef";


# a list
my @fibs = (1, 1, 2, 3, 5);

# a list with range
my @alphabet = 'a' .. 'z';

# another one with naturals
my @sequence = 0 .. 41;


# a postfix if
say "go, $name!" if $name eq 'Anakin';

# if block form
if ($vita eq 'bella') {
    say "Buongiorno, principessa!"
}

# postfix unless
say "You're wrong!" unless 0 == 1;

# unless block form
unless (0) {
   say "0 is not true";
}

