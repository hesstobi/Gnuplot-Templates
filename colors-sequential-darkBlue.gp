# 
#  colors-sequential-darkBlue.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

load 'cdtudcolors.gp'

set linetype 1  linecolor rgb HKS41_100
set linetype 2  linecolor rgb HKS41_80 
set linetype 3  linecolor rgb HKS41_60 
set linetype 4  linecolor rgb HKS41_40 
set linetype 5  linecolor rgb HKS41_20 

set palette defined (0 HKS41_100 ,\
                     1 HKS41_90  ,\
                     2 HKS41_80  ,\
                     3 HKS41_70  ,\
                     4 HKS41_60  ,\
                     5 HKS41_50  ,\
                     6 HKS41_40  ,\
                     7 HKS41_30  ,\
                     8 HKS41_20     ) 