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

reset
load "defaults.gp"

LAYOUTS = "layout-default.gp layout-centerAxis.gp layout-emptyCenterAxis.gp layout-empty.gp "

set terminal cairolatex pdf size 20cm,20cm

set output 'test-layouts.tex'

f(x,i) = cos(x - 1.0 + i/10.0)
set xrange [-pi/4:pi]

set multiplot layout 2,2

  do for [file in LAYOUTS] {
    set label 1 '\textbf{'.file.'}' at graph 0.5,graph 1 center offset 0,2 
    load file
    set tmargin 4
    plot for [i=1:4] f(x,i) with lines lt i notitle
  }

unset multiplot

reset
load "defaults.gp"
load "layout-empty.gp"
load "latex.gp"

set terminal cairolatex pdf size 20cm,6cm

set output 'test-latex.tex'

set label 1 "arrowLabel('Label'):  ".arrowLabel('Label') at 0,0 left
set label 2 "shortLabel('U','V'):  ".shortLabel('U','V') at 0,-1 left
set label 3 "shortArrowLabel('U','V'):  ".shortArrowLabel('U','V') at 0,-2 left
set label 4 "longLabel('Spannung','U','V'):  ".longLabel('Spannung','U','V') at 0,-3 left
set label 5 "longArrowLabel('Spannung','U','V'):  ".longArrowLabel('Spannung','U','V') at 0,-4 left
set label 6 "shortPuLabel('U','Ur'):  ".shortPuLabel('U','U_\bez{r}') at 0,-5 left
set label 7 "shortPuArrowLabel('U','Ur'):  ".shortPuArrowLabel('U','U_\bez{r}') at 0,-6 left
set label 8 "longPuLabel('Spannung','U','Ur'):  ".longPuLabel('Spannung','U','U_\bez{r}') at 0,-7 left
set label 9 "longPuArrowLabel('Spannung','U','Ur'):  ".longPuArrowLabel('Spannung','U','U_\bez{r}') at 0,-8 left

set yrange [-8:0]
set xrange [0:1]

plot 1/0 notitle




