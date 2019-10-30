# GES

## Requirements
Matlab 2018b

## Procedure to run the code
1. swith to the dircetory that stored the GES folder 
2. right click on the folder GES add the folder and subfolder to path
3. open 'ICCNetwork9_2_nf_EGM3_p1.slx' and run the model (use fixed step size 0.001 with the solver ode1(Euler))

## About the model
3 x 3 cells network has been implemented, which is with conduction velocity 10 mm/s. The network representing a 20 mm  x 20 mm tissue and the propagation delay between the neighboring cells is 1 s.

The frequency in the model can be adjusted to mimic differet propagation patterns.

## Other files
'autoPattern.m': can be used to get the pattern timing info before the pace apply
