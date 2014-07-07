# My Default Layout

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
set label 200 '200: ylabel' at screen 0, graph 0.5 center offset 1,0 textcolor rgb TEXTCOLOR rotate by 90
set label 201 '' at screen 1, graph 0.5 center offset -1,0 textcolor rgb TEXTCOLOR rotate by 90
set label 100 '100: xlabel' at graph 0.5, screen 0 center offset 0,1 textcolor rgb TEXTCOLOR
set label 101 '' at graph 0.5, screen 1 center offset 0,-1 textcolor rgb TEXTCOLOR

set xlabel '' offset 0,0.0 textcolor rgb TEXTCOLOR
set ylabel '' offset 0,0.0 textcolor rgb TEXTCOLOR

#Margin
set lmargin 8
set bmargin 4


# Ranges
set xrange [*<10:*]
set yrange [*<10:*]
set zrange [*<10:*]

