#!/usr/bin/gnuplot
#######################################################
#
# Test-Figures for this templates
#    
########################################################

reset

# Terminal
set terminal cairolatex pdf color size 20cm,10cm 

# Basis Settings
load "defaults.gp"

set xrange [0:10]
set yrange [0:10]
set key outside

set output 'test-defaults.tex'
plot for [i=-1:7] 9-i*x*0.1 with lines lt i title 'linetype '.i


load "layout-empty.gp"

set terminal cairolatex pdf size 20cm,3cm

set ytics 1,1,1 scale 0.0
set for [i=1:7] ytics add (''.i -i)
set sample 3
set tmargin 2.5

set output 'test-linestypes.tex'

set multiplot layout 1,3
  
  set label 1 '\textbf{Dashed Lines}' at graph 0.5,graph 1 center offset 0,2 
  plot for [i=1:7] -1*i with lines lt i dt i title 'linetype '.i
  
  set label 1 '\textbf{Linespoints}'
  plot for [i=1:7] -1*i with linespoints lt i title 'linetype '.i
  
unset multiplot


set terminal cairolatex pdf size 20cm,12cm
set output 'test-colors.tex'
COLORSTYLES = system('basename `ls ./../colors*`')

set multiplot layout 4,3


do for [file in COLORSTYLES] {
  set label 1 '\textbf{'.file.'}'
  load file
  plot for [i=1:NUMOFLINETYPES] -1*i with linespoints lt i title 'linetype '.i

}

unset multiplot
