#!/usr/bin/perl

# use warnings;
# use strict;

use File::Basename;

#open (OUT, ">out_wavestats_$info.txt") or die "could not open OUT\n";

foreach $a(@ARGV){

	open (IN, "<$a") or die "couldn't open $a\n";
	
	$a =~ /(\d+\w+\.+?)/;
	my $info = ($a = basename($a));
	open (OUT, ">out_wavestats_$info.txt") or die "could not open OUT\n";

	<IN>;
	my $time;
	foreach (my $gettime = <IN>){
		if (m/(Duration =  )(\d+)/){
		$time = $2;
		}
	}
	<IN>;

	my $ctr;
	my @peaktime = ();
	my @rrint = ();
	my @amplitude = ();

	while(my $line = <IN>){
		my @column = split("\t",$line);
		
		push(@rrint, $column[2]);
		push(@amplitude, $column[5]);
		$ctr++;
		
	}
	
	$ctr = ($ctr-1);
	#my $timemins = ($time/60);
	
	my $rrintmean = mean(@rrint);
	my $ampmean = mean(@amplitude);
	my $rrintvar = var(@rrint);
    my $ampstd = sqrt($ampmean);
	
	#my $waverate = ($ctr/$time);
	my $timeinmin = ($time/60);
	#my $waveratemin = $ctr/$timeinmin;
	
	print OUT "Experiment: $info\n\n";
	
#	print OUT "Rate: $waverate waves/sec\n";
#	print OUT "Rate: $waveratemin waves\/min\n";
#	print OUT "time = $time(seconds)\n";
	print OUT "number of waves: $ctr\n";
	print OUT "mean R-R interval: $rrintmean\n";
	print OUT "R-R interval variance: $rrintvar\n";
	print OUT "mean amplitude: $ampmean\n";
    print OUT "amplitude stdev: $ampstd\n\n";

}

close (IN);
close (OUT);

sub mean {
	my(@data) = @_;
	my $sum;
    foreach(@data) {
    	$sum += $_;
    }
	return($sum / @data);
}
  
sub var {
	my(@data) = @_;
    my($var, $avg)=(0,0);
    $avg = mean(@data);
    foreach my $elem (@data) {
		$var += ($avg - $elem) **2;
	}
    return($var / ( @data - 1 ));
}
