# 
#  General Variables and Defaults Settings for my Gnuplot
#  
#  Created by Tobias Heß on 2014-07-04.
#


# Init Variables
if (!exists('GRIDCOLOR')) {
     GRIDCOLOR = "#000000"
} 
if (!exists('TEXTCOLOR')) {
     TEXTCOLOR = "#000000"
} 
if (!exists('LINEWIDTH')) {
     LINEWIDTH = 3
} 
if (!exists('POINTSIZE')) {
     POINTSIZE = 0.5
} 
if (!exists('LOCALE')) {
     LOCALE = system('echo $LANG')
}

set locale LOCALE
set decimalsign locale LOCALE

POINTTYPE1 = 7
POINTTYPE2 = 5
POINTTYPE3 = 9
POINTTYPE4 = 13
POINTTYPE5 = 11
POINTTYPE6 = 7
POINTTYPE7 = 2
POINTSIZE1 = 1.0*POINTSIZE
POINTSIZE2 = 0.9*POINTSIZE
POINTSIZE3 = 1.2*POINTSIZE
POINTSIZE4 = 1.1*POINTSIZE
POINTSIZE5 = 1.2*POINTSIZE
POINTSIZE6 = 1.0*POINTSIZE
POINTSIZE7 = 0.9*POINTSIZE

set linetype 1 linecolor rgb "#A6CEE3" linewidth LINEWIDTH pointtype POINTTYPE1 pointsize POINTSIZE1
set linetype 2 linecolor rgb "#1F78B4" linewidth LINEWIDTH pointtype POINTTYPE2 pointsize POINTSIZE2
set linetype 3 linecolor rgb "#B2DF8A" linewidth LINEWIDTH pointtype POINTTYPE3 pointsize POINTSIZE3
set linetype 4 linecolor rgb "#33A02C" linewidth LINEWIDTH pointtype POINTTYPE4 pointsize POINTSIZE4
set linetype 5 linecolor rgb "#FB9A99" linewidth LINEWIDTH pointtype POINTTYPE5 pointsize POINTSIZE5
set linetype 6 linecolor rgb "#000000" linewidth LINEWIDTH dashtype 1 pointtype POINTTYPE6 pointsize POINTSIZE6
set linetype 7 linecolor rgb "#000000" linewidth LINEWIDTH dashtype 2 pointtype POINTTYPE7 pointsize POINTSIZE7
set linetype cycle 7




load "layout-default.gp"

# for Latex Terminals load the latex settings
if (strstrt(GPVAL_TERM, 'latex') > 0) {
    load "latex.gp"
}

