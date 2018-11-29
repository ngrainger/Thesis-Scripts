control_wave_normalization.pl usage

>sample file (LengthMeasurements.txt) - generated from measure tool in Fiji

   ,Area,Mean,Min,Max,Angle,Length
1,199,102.121,72.000,132.010,-88.255,197.591
2,362,87.850,56.460,165.994,-88.572,361.112
3,205,100.093,67.000,135.035,-88.307,203.574
4,361,87.286,56.796,158.564,-88.086,359.684
5,316,91.919,59.841,133.306,-88.182,314.659
6,354,90.276,57.982,139.017,-88.377,353.142
7,129,104.453,79.420,133.961,-88.647,127.535
8,358,94.821,62.034,141.126,-88.075,357.202
9,291,89.931,58.210,126.560,-88.420,289.625
10,359,93.526,61.508,137.950,-88.080,358.185

>Open terminal
>Navigate to file directory where you would like output files to be written to.
>in the prompt window type: perl
>drag and drop Control_wave_normalization.pl file into prompt window
>drag and drop LengthMeasurements.txt files to analyze (this script can work on multiple files at the same time)
>type spatial calibration of file (i.e. um/px)

e.g. usage below

Nathans-MacBook-Pro:Script Test nathan$ perl /Users/nathan/Desktop/Wave\ Propagation\ Normalization\ Script\ 09\:23/GitHub\ Scripts/Control_wave_normalization.pl /Users/nathan/Desktop/Ano1\ KD\ Experiments/KDs/Script\ Test/LengthMeasurements.txt 0.3

>hit enter
>normalized_control_wave_FILENAMEHERE should appear in directly you are nested in in terminal.

e.g. data generated below

File Name: LengthMeasurements.txt
-------------------------------------

Spatial Calibration: 0.3 um/px 
Total Number of Particles: 42
Longest Ca2+ Wave Travel Distance: 361.112

Normalized Ca2+ Wave Spread (% of max):
--------------------------------------------
54.72
100.00
56.37
99.60
87.14
97.79
35.32

Spatial Spread (um):
--------------------
59.2773
108.3336
61.0722
107.9052
94.3977
105.9426
38.2605


