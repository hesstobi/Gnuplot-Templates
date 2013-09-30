# 
#  colors-sequential-Gray.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

load 'cdtudcolors.gp'

set linetype 1  linecolor rgb "#252525"
set linetype 2  linecolor rgb "#636363"
set linetype 3  linecolor rgb "#969696" 
set linetype 4  linecolor rgb "#CCCCCC" 
set linetype 5  linecolor rgb "#F7F7F7" 

set palette defined (0 "#252525" ,\
                     1 "#636363" ,\
                     2 "#969696" ,\
                     3 "#CCCCCC" ,\
                     4 "#F7F7F7" ) 