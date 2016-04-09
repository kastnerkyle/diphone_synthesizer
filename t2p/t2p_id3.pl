#!/usr/bin/perl

# kevin lenzo 12/97

# build decision tree for t2p from t2p aligned
# dictionary.  takes the dictionary from stdin
# or from a command line arg.  
# output is a subroutine that may be loaded
# into a perl program.  

# you can change some things
# here to output the decision tree instead.
# unfortunately, most of that bit is actually in
# the dtree code and not in printtree where it 
# should be.

# define forceorder to use a trie instead of a dt
# my @forceorder = qw(L R1 L1 R2 L2 R3 L3);

# minimum amount of progress to justify further expansion
$mingain = 0.001;

# maximum depth to expand to
$maxdepth = 7;

# give us hot pipes!
my $oldfh = select(STDERR); $| = 1; select($oldfh); $| = 1;

$attributes ||= "L3 L2 L1 L R1 R2 R3 P";

&make_tree();

exit(0);

# --- support routines

sub make_tree {
    my $line;

    while (defined($line = <>)) {
	my $linecount = 0;
	my $num_atts;
	chomp $line;

	$line =~ s/\s+$//;
	$line =~ s/\s+/ /g;

	if ($line =~ s/^\#\s+//) {
	    # get attribute names from comment if it's there
	    $attributes = $line;
	    print "# read attributes from comment: $line\n";
	    next;
	}

	my @atts = split /\s+/, $line;
	$num_atts = @atts if !$linecount;
	if (@atts != $num_atts) {
	    print STDERR "warning: wrong number of attributes at line $. -- skipping\n";
	    next;
	}

	$linecount++;
	$examples{$line}++;
    }

    print STDERR "\n";
    print STDERR "# read in data ($linecount lines, ".scalar(keys %examples)." unique)\n";

    $attributes ||= join(" ", 1..$num_atts);
    @result = &id3(0, $attributes, %examples);

    print 'sub context2phone { 
  my @L = @_;
  my %att;

';

    my @as = split /\s+/, $attributes;
    foreach $a (0..$#as-1) {
	print "  \$att{'$as[$a]'} = \$L[$a];\n";
    }

    print "\n";

    &printtree(1, @result);

    print "};\n\n1;\n";
}

sub printtree {
    my ($depth, @tree) = @_;
    my $t;
    while ($t = shift @tree) {
	next unless $t;
	if (ref($t) eq "ARRAY") {
	    &printtree($depth+1, @{$t});
	} else {
	    $pre = '  ' x $depth;
	    print "$pre$t\n";
	}
    }
}

sub id3 {
    my ($depth, $attributes, %exmpls) = @_;
    my @atts = split /\s+/, $attributes;

    my @root; my $count = 0; my %values;
    my %fvals;

#    print "depth: $depth atts: $attributes items: ".scalar(keys %exmpls)."\n";
#    if (!$attributes) { print join("\n", @exmpls)."\n"; return 'NULL' };

    my %targets;
    my $best; my $mostcommon = 0; 

    my $e;

    foreach $e (keys %exmpls) {
	next unless $e;

	my @a = split /\s+/, $e;

	$targets{$a[$#a]} += $exmpls{$e};
	for $i (0..$#a) {
	    $fvals[$i]{$a[$i]} += $exmpls{$e} if $a[$i];
	    if ($fvals[$i]{$a[$i]} > $mostcommon) {
		$best = $a[$i];
		$mostcommon = $fvals[$i]{$a[$i]};
	    }
	}
	$count += $exmpls{$e};
    }

    my @values = keys %targets;
    my $bestphone = (sort {$targets{$b} <=> $targets{$a}} keys %targets)[0];

    if (!@values || !%exmpls) {
	# no input; return null
	@root = ("return '';");

    } elsif (scalar(@values) == 1) {
	# there's only one value
	@root = ("return '$bestphone'; \# unique at depth $depth");

    } elsif ($depth == $maxdepth) {
	# we don't want to go deeper than maxdepth
	my $sumtargets;
	foreach (keys %targets) {
	    $sumtargets += $targets{$_};
	}
	@root = ("return '$bestphone'; \# depth limit ($targets{$bestphone}/$sumtargets; ".scalar(keys %targets)." classes) at depth $depth");

    } elsif (!$attributes || (@atts == 1)) {
	# attributes are empty, so return most common
	my $sumtargets;
	foreach (keys %targets) {
	    $sumtargets += $targets{$_};
	}
	@root = "return '$bestphone'; \# best, exhausted ($targets{$bestphone}/$sumtargets; ".scalar(keys %targets)." classes) at depth $depth";

    } else {
	# the interesting case
	# find the best splitter
	my $want = '';
	if (@forceorder) {
	    $want = $forceorder[$depth];
	}

	my $g = 0; my $bestgain = -1.0; my $bestgainer = 0;
	for $i (0..$#atts-1) {
	    if ($want) { next unless $atts[$i] eq $want };
	    $g = &gain2($i, %exmpls);

	    if ($g > $bestgain) {
		$bestgainer = $i;
		$bestgain = $g;
	    }
#	    print "$i $atts[$i]: $g (best = $atts[$bestgainer] $bestgain)\n";
	}
#	print "\n";

	my @newatts; my $newatts;
	my $was = keys %exmpls;

	# the gain has to be greater than epsilon
	if ($bestgain <= $mingain) {
	    # let the base case take it 
	} else {
	    for $a (0..$#atts-1) {
		push @newatts, $atts[$a]  unless ($a == $bestgainer);
	    }
	    $newatts = join " ", @newatts, $atts[$#atts];

	    # make a subtree for each feature value
	    foreach $k (keys %{$fvals[$bestgainer]}) {
		last unless (%exmpls);
		my %them;
		foreach $e (keys %exmpls) {
		    my @i = split /\s+/, $e;
		    if ($i[$bestgainer] eq $k) {
			my @it = split /\s+/, $e;
			splice @it, $bestgainer, 1;
			my $f = join(" ", @it);
			$them{$f} =  $exmpls{$e};
			delete $exmpls{$e};
		    }
		}

		if (%them) {
		    my @thing = &id3($depth+1, $newatts, %them);
		    if ((@thing == 1)&&($thing[0] =~ /return '$bestphone';/)) {
			# this gets handled in the default case
		    } else {
			push @root, "if (\$att{'$atts[$bestgainer]'} eq '$k') { ",[@thing], "} ";
		    }
		}
	    }
	}
	push @root, "return '$bestphone';";

	print STDERR "# ";
	print STDERR "  "x$depth;
	printf STDERR "$depth: %0.3f $atts[$bestgainer] [$bestphone]\t", $bestgain;
	print STDERR scalar($was)." cases.\t";
	print STDERR "\n";

    }

    @root;
}


sub gain2 {
    my ($att, %set) = @_;
    my @vals;
    my $featurecount = 0; 
    my %featurevals;
    my %all; my %fvc; my %fvs;

    foreach $e (keys %set) {
	chomp;
	my @vals = split /\s+/, $e;
	my $feature = $vals[$att]; 
	my $value = $vals[$#vals];
	$fvs{$feature}{$value} += $set{$e};
	$fvc{$feature} += $set{$e};
	$all{$value} += $set{$e};
	$total += $set{$e};
    }
    
    my $start_h = &entropy2(%all);
    my $h = 0; my $h1;

    foreach $fv (keys %fvs) {
	$h1 = &entropy2(%{$fvs{$fv}});
	$h1 *= $fvc{$fv} / $total;
	$h += $h1;
    }

    $h = $start_h - $h;
    $h;
}

sub entropy2 {
    my %set = @_;
    my $h = 0;
    my $count = 0;

    foreach $k (keys %set) {
	$count += $set{$k};
    }

    if ($count) {
	foreach $k (keys %set) {
	    my $p = $set{$k} / $count;
	    if ($p) {
		$h -= $p * (log($p) / log(2));
	    } else {
		print "0 prob for $e\n";
	    }
	}
    }

    $h;
}

# -- sanity

sub gain1 {
    my ($att, @set) = @_;
    my @vals;
    my $featurecount = 0; 
    my %featurevals;

    foreach (@set) {
	chomp;
	my @vals = split /\s+/;
	my $feature = $vals[$att]; 
	my $value = $vals[$#vals];
	push @{$featurevals{$feature}}, $value;
	$featurecount++;
    }
    
    my $start_h = &entropy1(@set);
    my $h = 0;

    foreach $fv (keys %featurevals) {
	$h1 = &entropy1(@{$featurevals{$fv}});
	$h1 *= scalar(@{$featurevals{$fv}}) / $featurecount;
	$h += $h1;
    }
    
    $h = $start_h - $h;

    $h;
}

sub entropy1 {
    my @set = @_;
    my %count;
    my $h;

    foreach $e (@set) {
	my @es = split /\s+/, $e;
	$count{$es[$#es]}++;
    }

    foreach $type (keys %count) {
	my $p = ($count{$type} / @set);

	if ($p) {
	    $h -= $p * (log($p) / log(2));
	} else {
	    print "0 prob for $e\n";
	}
    }

    $h;
}

