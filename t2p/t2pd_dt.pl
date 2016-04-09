#!/usr/local/bin/perl5

# kevin lenzo 12/07
#
# run the decision tree letter-to-phone rules
# 
# if run with no arguments, goes into interactive
# mode.  If given an argument, it expects the arg
# to be a t2p dictionary alignment, from which it
# will generate statistics.

$| = 1;
$interact = (!@ARGV);

# set the decision tree to use in the next line here.
# it will load the subroutine.

if ($interact) {
	require "r1d7.pl"; # the big tree from the 58K dictionary
    
    print "\n decision-tree based text-to-phoneme conversion\n\n";
    $prompt =  "> ";
    print $prompt;

    while (<>) {
	chomp;
	if (/^\/quit$/i) {
	    print "\n<exiting>\n\n";
	    exit(0);
	}
	#tr/a-z/A-Z/;

	my @phones;
	foreach $word (split /\s+/, $_) {
	    push @phones, &l2p(split(//, $word));
	}
#	$phones = join(" ", &cleanup(@phones));
	my $phones .= join(" ", @phones);
	print join(" ", @phones)."\n";

	print $prompt;
    }
} else {
    my $module = $ARGV[0];    
	require "$module";

    my $input = $ARGV[1];
    my $dialect = $ARGV[2];
    open (IN, $input) || die "can't open $input: $!\n";

    my $gw = 0; my $pc; my $wc; my $gp;
    while (<IN>) {
	chomp;
	($w, $p) = split /\s+/, $_, 2;
	$w =~ s/\(.*//;
	#$w =~ tr/a-z/A-Z/;

	@phones = &l2p($dialect, split(//, $w));
	@dphones = split /\s+/, $p;

	my $wgp = 0;
	foreach (0..$#phones) {
	    $wgp += ($phones[$_] eq $dphones[$_]);
	    $pc++;
	}

	$gp += $wgp;
#	print "$w $wgp ".scalar(@phones)."\n";
	if ($wgp == @phones) {
	    $gw++;
#	    print "\n\ngood word: $w\n\n";
	}
	$wc++;

	if (!($wc % 500)) {
	    printf "$wc %0.2f %0.2f\t$w $p", ($gp/$pc), ($gw/$wc);
	    $ph = join(" ", @phones);
	    print "/ $ph" unless $ph eq $p;
	    print "\n";
	}
	
    }

    printf "$wc %0.2f %0.2f\n", ($gp/$pc), ($gw/$wc);

    close IN;
}


sub cleanup {
    # clean up the phonetic output a little

    my @phones = @_;
    my $x = " ".join(" ", @phones)." ";

    $x =~ s/ (\S+)( \1)+/ $1/g;
    $x =~ s/N NG/NG/g;

    $x =~ s/[AEIOU]X?[^R] ([AEIOU]X?R)/$1/g;

    $x =~ s/_//g;
    $x =~ s/^\s+//;
    $x =~ s/\s+$//;
    $x =~ s/\s+/ /g;

    split(/\s+/, $x);
}


sub l2p {
    # the letter-to-phone workhorse
    my $dialect = $_[0];
    my @letters = @_;
    shift @letters;

    my @orig_letter = @letters;
    push @letters, ('-', '-', '-');
    unshift @letters, ('-', '-', '-');

    my @result; 
    my $localgoodcount = 0;
    my $opos;
    my @phones;

    for $opos (0..$#orig_letter) {
	# context2phone is the dtree subroutine from the "require"
	my @features = @letters[$opos..$opos+6];
	unshift @features, $dialect;
	$res = &context2phone(@features);
	push @phones, $res;
    }

    @phones;
}
