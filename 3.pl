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
my $x = '';
for (@out) { 
	$x .= ($_ > ((int @in) / 2)) ? "1" : "0"; 
}
$x = oct("0b" . $x);
print $x * (~$x & 0b1111_1111_1111) . "\n";

__DATA__
