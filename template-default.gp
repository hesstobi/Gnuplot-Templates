#*######################################################
#*  Help
#*######################################################
#* 
#* Here you can define your default gnuplot template.
#* In this template you can use with #{varname} these
#* variables : 
#* name - the name of the file
#* project - the project name
#* author - your name
#* date - the current date
#* year - the current year
#* copy - the copyright holder
#* 
#* Lines beginning with #* will be not displayed in the
#* resulting file. Thus these can used for commenting
#* this file
#*
#!/usr/bin/gnuplot
#######################################################
#
#  #{name}
#  #{project}
#
#  Created by #{author} on #{date}.
#  Copyright #{year} #{copy}. All rights reserved.
#  
########################################################

reset

########################################################
#  Terminal
########################################################
#
#  Size
#  - 16cm,10cm    A4-Page normal FigSize
#  - 13.5cm,7.9cm PowerPoint-Presentation Size 11/16
set terminal cairolatex pdf color size 16cm,10cm 
#  posible Options:
#     {eps | pdf}
#     {standalone | input}
#     {blacktext | colortext | colourtext}
#     {header <header> | noheader}
#     {mono|color}
#     {{no}transparent} {{no}crop} {background <rgbcolor>}
#     {font <font>} {fontscale <scale>}
#     {linewidth <lw>} {rounded|butt} {dashlength <dl>}
#     {size <XX>{unit},<YY>{unit}}


########################################################
#  Loading Layouts
########################################################

# Layout
# GRIDCOLOR = "#000000"
# TEXTCOLOR = "#000000"
# POINTSIZE = 1
# LINEWIDTH = 1
# LOCALE = de_de
load 'defaults.gp'

########################################################
#  Plot
########################################################
set output '#{name}.tex'

set label 100 longArrowLabel('desc','symb','unit') 
set label 200 longArrowLabel('desc','symb','unit') 


plot ${0:sin(x)} with lines