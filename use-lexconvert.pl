#!/usr/bin/perl
# This program originally based on:
# "unix2mac.pl
# Change Unix line ends to Mac ones."
#  written by Beth Bryson.
#
# modified 20080401 by E Jackson to make using lexconvert.py easier for my situation
#
# The task that necessitated this program is to convert a spreadsheet (in csv format)
# of word list data from unicode-ipa to x-sampa. lexconvert.py will only convert single
# words at a time between these formats, so this program just takes the spreadsheet
# and feeds one word at a time to lexconvert.
#
# Usage is "ipa2xsampa.pl < infile > outfile". lexconvert.py must be in the same directory.


while (<>) {
	chomp($_);
	$out = `./lexconvert.py --phones2phones unicode-ipa x-sampa $_`;
	$out =~ s/\n/\t/g;
	print "$out\n";
	}
