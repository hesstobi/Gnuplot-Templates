# 
#  stdlayout.gp
#  
#  
#  Created by Tobias Heß on 2011-04-28.
#  Copyright 2011 TU Dresden. All rights reserved.
# 


#  Abfrage ob Farben definiert wurden 
#if (!exists('GRIDCOLOR')) GRIDCOLOR = "#000000"
#if (!exists('TEXTCOLOR')) TEXTCOLOR = "#000000"
#

# Zahlenformat
set format "\\num{%g}"
set decimalsign "."

# Tics
set xtics nomirror in scale 1,0.5 offset 0,0 autofreq textcolor rgb TEXTCOLOR
set ytics mirror in scale 1,0.5 offset 0,0 autofreq textcolor rgb TEXTCOLOR

# Key
set key inside right top Left revers samplen 2 spacing 1.3 textcolor rgb TEXTCOLOR

# Grid
set grid noxtics ytics lt 0 lw 2 linecolor rgb GRIDCOLOR
set mxtics 5
set mytics 5

# Border
set border 11 lt -1 lw 2 linecolor rgb GRIDCOLOR

# Labels
set label 100 '' at screen 0, graph 0.5 center offset 1,0 textcolor rgb TEXTCOLOR rotate by 90
set xlabel '' offset 0,0.5 textcolor rgb TEXTCOLOR
labelWithArrow(desc,symb,unit) = sprintf("%s $%s$\\si[per-mode=symbol]{\\per %s} {\\tikz[baseline] \\draw[-latex,thick] (0,0.5ex) -- (7ex,0.5ex);}",desc,symb,unit)

#Margin
set lmargin 5

# Trennung Achse
SPILTAXES = '\rule[-0.5pt]{1.7ex}{0.5pt}\hspace{-1.7ex}{\rule[0.5pt]{1.7ex}{0.5pt}}\color{white}\hspace{-1.7ex}{\rule{1.7ex}{0.5pt}}' 

# Ranges
set xrange [<0:*]
set yrange [<0:*]
set zrange [<0:*]