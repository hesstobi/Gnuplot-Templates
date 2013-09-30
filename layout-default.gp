# 
#  layout-default.gp
#  .gnuplot
#  
#  Created by Tobias Heß on 2013-08-02.
#  Copyright 2013 TU Dresden. All rights reserved.
# 

#  Abfrage ob Farben definiert wurden 
if (!exists('GRIDCOLOR')) {
     GRIDCOLOR = "#000000"
} 
if (!exists('TEXTCOLOR')) {
     TEXTCOLOR = "#000000"
} 

# Format
set format "\\num{%g}"

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
set label 101 '' at screen 1, graph 0.5 center offset -1,0 textcolor rgb TEXTCOLOR rotate by 90
set xlabel '' offset 0,0.0 textcolor rgb TEXTCOLOR

#Margin
set lmargin 5

# Ranges
set xrange [*<10:*]
set yrange [*<10:*]
set zrange [*<10:*]

# Label function

labelWithArrow(desc) = sprintf("%s {\\tikz[baseline] \\draw[-latex,thick] (0,0.5ex) -- (7ex,0.5ex);}",desc)