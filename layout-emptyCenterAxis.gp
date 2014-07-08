
load 'layout-empty.gp'

set arrow 100 from graph 0, first 0 to graph 1.02, first 0 size graph 0.02,15,60 filled ls -1 lw 2
set arrow 200 from first 0, graph 0 to first 0, graph 1.02 size graph 0.02,15,60 filled ls -1 lw 2

set label 100 "100: xlabel" at graph 1.02, first 0 offset 0,-1 right
set label 200 "200: ylabel" at first 0, graph 1.02 offset -1,-0.5 right