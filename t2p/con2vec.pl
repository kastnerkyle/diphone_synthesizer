#!/usr/local/bin/perl

# kevin lenzo 11/97
# revised 4/98 (thanks to Vincent Pagel for finding the index bug!)

# turn a t2p dictionay alignment into a bunch of observation
# vectors suitable for various machine learning techniques.

# use stdin or a command line arg as file name; result to stdout

while (<>) {
    chomp;
    next unless /\S/;
    ($w, $p) = split(/\s+/, $_, 2);

    @w = split(//, $w);
    @p = split(/\s+/, $p);
    
    for $i (0..$#w) {
	$r1 = '-'; $r2 = '-'; $r3 = '-';
	$l1 = '-'; $l2 = '-'; $l3 = '-';

	if ($i > 0) { $l1 = $w[$i-1]; }
	if ($i > 1) { $l2 = $w[$i-2]; }
	if ($i > 2) { $l3 = $w[$i-3]; }

	if ($i <= $#w - 1) { $r1 = $w[$i+1]; }
	if ($i <= $#w - 2) { $r2 = $w[$i+2]; }
	if ($i <= $#w - 3) { $r3 = $w[$i+3]; }

	if ($w[$i] && $r1 && $r2 && $r3 && $l1 && $l2 && $l3 && $p[$i]) {
	    print "$l3 $l2 $l1 $w[$i] $r1 $r2 $r3 $p[$i]\n";
	}
    }
}



