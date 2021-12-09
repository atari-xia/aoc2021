use strict;
use warnings "all";


my @out;
my @in;
chomp(@in = <DATA>);
for (@in) {
	my @line = split //;
	for my $x (0..11) {
		$out[$x] += $line[$x];
	}
}
my $x = "";
my $y = "";
for (@out) { 
	$x .= ($_ > ((int @in) / 2)) ? "1" : "0"; 
	$y .= ($_ > ((int @in) / 2)) ? "0" : "1"; 
}

print oct("0b" . $x) * oct("0b" . $y) . "\n";
