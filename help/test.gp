#!/usr/bin/gnuplot
#######################################################
#
# Test-Figures for this templates
#    
########################################################

reset

# Terminal
set terminal cairolatex pdf color size 16cm,10cm 

# Basis Settings
load "defaults.gp"

set xrange [0:10]
set yrange [0:10]
set key outside

set output 'test-defaults.tex'
plot for [i=-1:7] 9-i*x*0.1 with lines lt i title 'linetype '.i


load "layout-empty.gp"
set terminal cairolatex pdf size 4cm,4cm
set ytics 1,1,1 scale 0.0
set for [i=1:7] ytics add (''.i -i)

set output 'test-linetypes-dashed.tex'
plot for [i=1:7] -1*i with lines lt i dt i title 'linetype '.i

set output 'test-linetypes-points.tex'
set sample 3
plot for [i=1:7] -1*i with linespoints lt i title 'linetype '.i

COLORSTYLES = system('basename `ls ./../colors*`')


set print 'output.list'
do for [file in COLORSTYLES] {
  
  load file
  set output 'test-'.file[1:strlen(file)-3].'.tex'
  print 'test-'.file[1:strlen(file)-3].'.tex'
  plot for [i=1:NUMOFLINETYPES] -1*i with linespoints lt i title 'linetype '.i

}


