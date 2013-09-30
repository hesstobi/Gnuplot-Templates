# 
#  colors-sequential-darkGreen.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

load 'cdtudcolors.gp'

set linetype 1  linecolor rgb HKS57_100
set linetype 2  linecolor rgb HKS57_80 
set linetype 3  linecolor rgb HKS57_60 
set linetype 4  linecolor rgb HKS57_40 
set linetype 5  linecolor rgb HKS57_20 

set palette defined (0 HKS57_100 ,\
                     1 HKS57_90  ,\
                     2 HKS57_80  ,\
                     3 HKS57_70  ,\
                     4 HKS57_60  ,\
                     5 HKS57_50  ,\
                     6 HKS57_40  ,\
                     7 HKS57_30  ,\
                     8 HKS57_20     ) 