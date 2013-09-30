# 
#  colors-sequential-lightBlue.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

load 'cdtudcolors.gp'

set linetype 1  linecolor rgb HKS44_100
set linetype 2  linecolor rgb HKS44_80 
set linetype 3  linecolor rgb HKS44_60 
set linetype 4  linecolor rgb HKS44_40 
set linetype 5  linecolor rgb HKS44_20 

set palette defined (0 HKS44_100 ,\
                     1 HKS44_90  ,\
                     2 HKS44_80  ,\
                     3 HKS44_70  ,\
                     4 HKS44_60  ,\
                     5 HKS44_50  ,\
                     6 HKS44_40  ,\
                     7 HKS44_30  ,\
                     8 HKS44_20     ) 