#!/usr/bin/perl
use Digest::SHA qw/sha256/;
use List::Util qw/min/;
use strict;
use warnings;

#use lib '../lib';

use Test::More ;
use Crypt::OpenSSL::EC;
use Crypt::OpenSSL::Bignum;
use Crypt::OpenSSL::Hash2Curve qw/expand_message_xmd encode_to_curve get_hash2curve_params hash_to_curve/;
use Crypt::CPace ;
use Data::Dump qw/dump/;


my $u=pack("H*", "000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f");
my $prelen = prepend_len($u);
is(unpack("H*", $prelen), '8001000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f', 'prepend_len');


done_testing;
