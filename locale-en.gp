# 
#  locale-en.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

set decimalsign "."

labelWithUnit(desc,symb,unit) = sprintf("%s $%s$ in \\si{%s} {\\tikz[baseline] \\draw[-latex,thick] (0,0.5ex) -- (7ex,0.5ex);}",desc,symb,unit)
labelPerUnit(desc,symb,unit) = sprintf("%s $%s/%s$ {\\tikz[baseline] \\draw[-latex,thick] (0,0.5ex) -- (7ex,0.5ex);}",desc,symb,unit)
