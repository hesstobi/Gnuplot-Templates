# 
#  colors-sequential-lightOrange.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

load 'cdtudcolors.gp'

set linetype 1  linecolor rgb HKS07_100
set linetype 2  linecolor rgb HKS07_80 
set linetype 3  linecolor rgb HKS07_60 
set linetype 4  linecolor rgb HKS07_40 
set linetype 5  linecolor rgb HKS07_20 

set palette defined (0 HKS07_100 ,\
                     1 HKS07_90  ,\
                     2 HKS07_80  ,\
                     3 HKS07_70  ,\
                     4 HKS07_60  ,\
                     5 HKS07_50  ,\
                     6 HKS07_40  ,\
                     7 HKS07_30  ,\
                     8 HKS07_20     ) 