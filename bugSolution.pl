#!/usr/bin/perl

use strict;
use warnings;

my $file = shift @ARGV;
open my $fh, '<', $file or die "Could not open file '$file' $!";

while (my $line = <$fh>) {
    chomp $line;
    # Use \s+ to match one or more whitespace characters
    if ($line =~ /^(\s*\d+\s+)(\s*\w+\s+)(\s*\d+\s*)$/) {
        my ($id, $name, $age) = ($1, $2, $3);
        $id =~ s/\s+//g; #remove all whitespace from the ID string
        $name =~ s/\s+//g; #remove all whitespace from the name string
        $age =~ s/\s+//g; #remove all whitespace from the age string
        print "ID: $id, Name: $name, Age: $age\n";
    }
}
close $fh;