# 
#  lines-dashed.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 
#  5 dashed line style for gnuplot. Linewidth and Pointsize
#  can be changed with LINEWIDTH and POINTSIZE


if (!exists('LINEWIDTH')) {
     LINEWIDTH = 3
} 
if (!exists('POINTSIZE')) {
     POINTSIZE = 0.5
} 

POINTTYPE1 = 7
POINTTYPE2 = 5
POINTTYPE3 = 9
POINTTYPE4 = 13
POINTTYPE5 = 11
POINTSIZE1 = 1.0*POINTSIZE
POINTSIZE2 = 0.9*POINTSIZE
POINTSIZE3 = 1.2*POINTSIZE
POINTSIZE4 = 1.1*POINTSIZE
POINTSIZE5 = 1.2*POINTSIZE


set linetype 1 linetype 1 linecolor rgb "#A6CEE3" linewidth LINEWIDTH pointtype POINTTYPE1 pointsize POINTSIZE1
set linetype 2 linetype 1 linecolor rgb "#1F78B4" linewidth LINEWIDTH pointtype POINTTYPE2 pointsize POINTSIZE2
set linetype 3 linetype 1 linecolor rgb "#B2DF8A" linewidth LINEWIDTH pointtype POINTTYPE3 pointsize POINTSIZE3
set linetype 4 linetype 1 linecolor rgb "#33A02C" linewidth LINEWIDTH pointtype POINTTYPE4 pointsize POINTSIZE4
set linetype 5 linetype 1 linecolor rgb "#FB9A99" linewidth LINEWIDTH pointtype POINTTYPE5 pointsize POINTSIZE5
set linetype 6 linetype 1 linecolor rgb "#A6CEE3" linewidth LINEWIDTH pointtype POINTTYPE1 pointsize POINTSIZE1
set linetype 7 linetype 1 linecolor rgb "#1F78B4" linewidth LINEWIDTH pointtype POINTTYPE2 pointsize POINTSIZE2

