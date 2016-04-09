#!/usr/bin/perl

# kevin lenzo   11/97

$verbosity = 0;

unless (@ARGV) {
    print STDERR "
    usage: $0 <dictionary> [<d2> [<d3> ...]]

           finds an alignment between letters and the phones
           for the given dictionaries.

           No dictionary given -- please specify a dictionary; 
           for example,

              $0 cmu58k94.dic > cmu58k94.t2p_dict

           Input is a dictionary with orthography on the left
           and phones on the right, white space seperated. 

              HOWLS HH AW L Z

           one per line.  The units may be any set.

";
    exit(1);
}

&alignDictionaries(@ARGV);

sub alignDictionaries {
    my @dicts = @_;
    foreach (@dicts) {
	&getDictionary($_);
    }

    # countLP is a hash accumulated in getDictionary.
    # it is the count of letter - phone associations.
    @what = sort keys %countLP;
    
    foreach $w (@what) {
	# normalize the probability of the letter-phone
	# association
	foreach $i (sort keys %{$assocLP{$w}}) {
	    $assocLP{$w}{$i} /= $countLP{$w};
	}
    }

    foreach $w (sort keys %dict) {
	@letters = split(//, $w);
	@phones = split(/\s+/, $dict{$w});

	my $text = join(" ", @letters);
	# get all possible placements of elisions 
	my @cands = &allNChooseK($text, scalar(@phones));

	my $bestprob = 0;
	my $bestpath = '';

	foreach $candidate (@cands) {
	    chomp $candidate;
	    $candidate =~ s/^\s+//;
	    $candidate =~ s/\s+$//;
	    # each candidate is a letter string with possible
	    # elisions, e.g.
	    #
	    #    BLOODSTAINS    B L AH _ D S T EY _ N Z
	    #
	    # $candidate just contains the right-hand part of that

	    my @letterpath = split(/\s+/, $candidate);
	    my $pathprob = 1.0;
	    my $pi = 0; 
	    my @result;
	    
	    foreach $li (0..$#letterpath) {
		$phones[$pi] =~ s/\s+//g;

		$l = $letterpath[$li];
		$p = $phones[$pi];

		if ($l eq "_") {
		    $p = "_";
		} else {
		    ++$pi;
		}
		push @result, $p;

		$pathprob *= $assocLP{$letters[$li]}{$p};
	    }

	    if ($pathprob > $bestprob) {
		$bestprob = $pathprob;
		$bestpath = join(" ", @result);
	    }
	}

	print "$w  $bestpath\n";
    }
}

# ---

sub getDictionary {
    my (@dictFiles) = @_;
    my $grandCount = 0;

    foreach $dict (@dictFiles) {
	print "getting dictionary $dict...\n" if ($verbosity);

	$count = 0 ;

	if (!open(DICTIONARY, $dict)) {
	    print "\tNo dictionary file $dict\n" if ($verbosity);
	} else {
	    while (<DICTIONARY>) {
#		last if (++$c11 > 10000);

		chomp;
		/^\s*(\S+?)\s+(.*?)\s*$/;

		my $w = $1;  
		my $p = $2;

		#if ($w =~ /\W/) {
		#    if ($verbosity > 1)  {
		#	print "rejecting $w (contains non-word char)\n";
		#    }
		#    next;
		#}

		if ($w && $p) {
		    &addContext($w, $p);
		} else {
		    warn "bad entry in dict:  $w => $p\n";
		}
		$count++;
	    }
	    
	    $grandCount += $count;
	    if ($verbosity) {
		print "\t$count ($grandCount) dictionary words loaded\n";
	    }
	}
    }
}


sub allNChooseK {
    my ($n, $k) = @_;
    my @items = split(/\s/, $n);
    my @r;

    # this is a "stars and bars" problem
    my $unused = '_';

    if ($k <= 0) {
	return join(" ", ($unused) x @items);
    } elsif ($k > @items) {
	return '';
    } elsif ($k == @items) {
	return $n;
    } else {
	my $top = shift @items;
	my $try = join(" ", @items);

	# we use this spot
	my @r1 = &allNChooseK($try, $k-1);
	foreach (@r1) {
	    $_ = $top." ".$_;
	}

	# we don't use this spot
	my @r2 = &allNChooseK($try, $k);
	foreach (@r2) {
	    $_ = $unused." ".$_;
	}

	@r = (@r1, @r2);
    }
    @r;
}

sub addContext {
    my ($word, $pron) = @_;

    chomp $word;
    chomp $pron;

    $origword = $word;
    $word =~ s/(\S)\(.*/$1/; # stript pron numbers
    #$word =~ tr/a-z/A-Z/;    # upcase

    my @letter = split(//, $word);
    my @phone  = split(/\s+/, $pron);

    if (@phone > @letter) {
	# this is a major problem.  in general, @p can be > @l
	# but this currently rejects that possibility.
	if ($verbosity) {
	    print  "rejecting $word / $pron (\# p > \# l)\n";
	}
    } else {
	my $text = join(" ", @letter);
	# get all C(|letters|, |phones|) and distribute
	# the association among them
	my @cands = &allNChooseK($text, scalar(@phone));

	foreach $cand (@cands) {
	    my @stuff = split(/\s+/, $cand);
	    my @which = grep { $stuff[$_] ne '_' } (0..$#stuff);
	    @stuff[@which] = @phone;

	    for $j (0..$#stuff) {
		# scatter the candidate weight based on
		# the number of candidates; each gets 1/|C| weight
		$assocLP{$letter[$j]}{$stuff[$j]} += 1.0 / @cands;
		$countLP{$letter[$j]} += 1.0 / @cands;
	    }
	}

	if ($word && $pron) {
	    $dict{$origword} = $pron;
	} else {
	    print "\# odd... word ($word) or pron ($pron) is not happy.\n";
	}
    }
}



sub vestigial_addContext {
    my ($word, $pron) = @_;

    chomp $word;
    chomp $pron;

    $origword = $word;
    $word =~ s/(\S)\(.*/$1/; # stript pron numbers
    $word =~ tr/a-z/A-Z/;    # upcase

    my @letter = split(//, $word);
    my @phone  = split(/\s+/, $pron);

    if (@letter >= @phone) {
	# slide phone over pron
	$nshift = $#letter - $#phone;

	for $i (0..$nshift) {
	    my @stuff = (('_')x $i, @phone, ('_')x($nshift-$i));
	    for $j (0..$#stuff) {
		$assocLP{$letter[$j]}{$stuff[$j]} += 1;
#		$assocLP{$letter[$j]}{$stuff[$j]} += (2**(-$i-1));
		$countLP{$letter[$j]} += 1;

		if ($PL) {
		    $assocPL{$stuff[$j]}{$letter[$j]} += 1;
		    $countPL{$stuff[$j]} += 1;
		}
	    }
	}
	if ($word && $pron) {
	    $dict{$origword} = $pron;
	}
    } else {
	if ($verbosity) {
	    print  "rejecting $word / $pron (\# p > \# l)\n";
	}
    }
}

