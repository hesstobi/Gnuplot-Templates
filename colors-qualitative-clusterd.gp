#TUD QUALITTIVE CLUSTERD COLORS

NUMOFLINETYPES=7

load 'cdtudcolors.gp'

set linetype 1  linecolor rgb HKS44_100
set linetype 2  linecolor rgb HKS65_100 
set linetype 3  linecolor rgb HKS33_100
set linetype 4  linecolor rgb HKS07_100
set linetype 5  linecolor rgb HKS41_100 
set linetype 6  linecolor rgb HKS57_100
set linetype 7  linecolor rgb HKS36_100 dashtype 1


set palette maxcolors 7
set palette defined (0 HKS44_100 ,\
                     1 HKS65_100 ,\
                     2 HKS33_100 ,\
                     3 HKS07_100 ,\
                     4 HKS41_100 ,\
                     5 HKS57_100 ,\
                     6 HKS36_100 ) 