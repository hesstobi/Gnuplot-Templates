# 
#  colors-sequential-lightGreen.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

load 'cdtudcolors.gp'

set linetype 1  linecolor rgb HKS65_100
set linetype 2  linecolor rgb HKS65_80 
set linetype 3  linecolor rgb HKS65_60 
set linetype 4  linecolor rgb HKS65_40 
set linetype 5  linecolor rgb HKS65_20 

set palette defined (0 HKS65_100 ,\
                     1 HKS65_90  ,\
                     2 HKS65_80  ,\
                     3 HKS65_70  ,\
                     4 HKS65_60  ,\
                     5 HKS65_50  ,\
                     6 HKS65_40  ,\
                     7 HKS65_30  ,\
                     8 HKS65_20     ) 