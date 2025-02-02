#!/usr/bin/perl

use strict;
use warnings;

my $file = shift @ARGV;
open my $fh, '<', $file or die "Could not open file '$file' $!";

while (my $line = <$fh>) {
    chomp $line;
    if ($line =~ /^(\d+)\s+(\w+)\s+(\d+)$/) {
        my ($id, $name, $age) = ($1, $2, $3);
        print "ID: $id, Name: $name, Age: $age\n";
    }
}
close $fh; 
