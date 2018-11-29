 #!/usr/bin/perl

#use warnings;
#use strict;

use List::MoreUtils 'pairwise';
use List::Util qw( min max );
use File::Basename;

foreach $a($ARGV[0]){ #each file given in argument line is read (can read multiple files at a time)

	open (IN, "<$a") or die "couldn't open $a\n";
	
	$a =~ /(\d+\w+\.+?)/;
	my $info = ($a = basename($a));
	open (OUT, ">normalized_control_wave_$info.txt") or die "could not open OUT\n";
	my $ctr = ();
	my @particlelength = ();

	
	<IN>;
	while(my $line = <IN>){ #reads IN into $line variable
		my @column = split(',',$line); #splits line being read on space and places each into a column array
		
		push(@particlelength, $column[6]); #pushes column 3 to particlelength array
		$ctr++; #adds to counter for every line	
	}
		
	print OUT "File Name: $info\n";
	print OUT "-------------------------------------\n\n";
	print OUT "Total Number of Particles: $ctr\n";


    
    my $max = max @particlelength;
    print OUT "Longest Ca2+ Wave Travel Distance: $max\n";
    print OUT "Normalized Ca2+ Wave Spread (% of max):\n";
    print OUT "--------------------------------------------\n";
    
    foreach my $particlelength (@particlelength) {
		my $max = max @particlelength;
		$particlelengthnormalized = (($particlelength/$max)*100);
		$particlelengthnormalized = sprintf "%.2f", $particlelengthnormalized;
    	print OUT "$particlelengthnormalized\n";
   	

    }

    print OUT "\n";
    print OUT "Spatial Spread (um):\n";
    print OUT "--------------------\n";
    
          foreach my $particlelength (@particlelength) {
    	$particlelength *= $ARGV[1];
    	print OUT "$particlelength\n";
    }


}

close (IN);
close (OUT); 