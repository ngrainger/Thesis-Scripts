Wave_stats.pl usage

>sample file (WaveStats.txt)

Filename: 	0.tiffWave Statistics for Trace  3Ref Peak = 	1	Test Peak = 	-1
Start = 	0.000	Fin = 	299.891	Duration = 	299.891
Trace	RPeakTime()	R-RInterval()	RVal()	TVal()	R-TAmp()	R-TDuration()	T-R-TDuration50P()	R-TAvgSlope()	R-TMaxSlope()	R-TMaxSlope5()
3	1.440	1.600	116.899	99.373	17.5261	0.0000	-1.9996	inf	0.0000	-1.9996
3	3.201	1.760	117.633	99.373	18.2607	0.0000	-1.9996	inf	0.0000	-1.9996
3	4.801	1.600	116.980	99.373	17.6078	0.0000	-1.9996	inf	0.0000	-1.9996
3	6.401	1.600	116.753	99.373	17.3806	0.0000	-1.9996	inf	0.0000	-1.9996
3	7.841	1.440	113.984	99.373	14.6119	0.0000	-1.9996	inf	0.0000	-1.9996
3	9.442	1.600	114.749	99.373	15.3764	0.0000	-1.9996	inf	0.0000	-1.9996
3	11.042	1.600	116.265	99.373	16.8922	0.0000	-1.9996	inf	0.0000	-1.9996


>Open terminal
>Navigate to file directory where you would like output files to be written to.
>in the prompt window type: perl
>drag and drop Wave_stats.pl file into prompt window
>drag and drop WaveStats.txt files to analyze (this script can work on multiple files at the same time)

e.g. usage below

Nathans-MacBook-Pro:Script Test nathan$ /Users/nathan/Desktop/Wave\ Propagation\ Normalization\ Script\ 09\:23/GitHub\ Scripts/Wave_stats.pl /Users/nathan/Desktop/5uM\ CaCC\ Analysis/022018\ SMCGCaMP3\ \(CaCC\ 5uM\)/Analysis/WaveStats.txt

>hit enter
>out_wavestats_FILENAMEHERE should appear in directly you are nested in in terminal.

e.g. data generated below

Experiment: WaveStats.txt

number of waves: 179
mean R-R interval: 1.65778333333333
R-R interval variance: 0.0851859025139665
mean amplitude: 17.5769933333333
amplitude stdev: 4.19249249651485



