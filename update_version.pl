#!/usr/bin/perl 

use strict;


if ( $ENV{BUILD_NUMBER} ) {
	use lib "SeccubusV2";
	use SeccubusV2;

	my $line = $SeccubusV2::VERSION;
	my $replace = $SeccubusV2::VERSION . ".B$ENV{BUILD_NUMBER}";
	system("sed -i 's:$line:$replace:' SeccubusV2.pm\n");
}