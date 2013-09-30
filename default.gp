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
#* templatedir - the directory of the templates
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
set loadpath '#{templatedir}'

########################################################
#  Terminal
########################################################
#
#  Size
#  - 16cm,10cm    A4-Page normal FigSize
#  - 13.5cm,7.9cm PowerPoint-Presentation Size 11/16
set terminal cairolatex pdf color dashed size 16cm,10cm 
#  posible Options:
#     {eps | pdf}
#     {standalone | input}
#     {blacktext | colortext | colourtext}
#     {header <header> | noheader}
#     {mono|color} {solid|dashed}
#     {{no}transparent} {{no}crop} {background <rgbcolor>}
#     {font <font>} {fontscale <scale>}
#     {linewidth <lw>} {rounded|butt} {dashlength <dl>}
#     {size <XX>{unit},<YY>{unit}}


########################################################
#  Loading Layouts
########################################################

# layout
# GRIDCOLOR = "#000000"
# TEXTCOLOR = "#000000"
load 'layout-default.gp'

# line types (solid or dashed)
# POINTSIZE = 1
# LINEWIDTH = 1
load 'lines-solid.gp'

# locale (de or en)
load 'locale-de.gp'

# color
load 'colors-qualitative-paired.gp'


########################################################
#  Plot Settings
########################################################

# Margins
set lmargin 7
# set rmargin 6
# set bmargin 4
# set tmargin 4

set xlabel labelWithUnit('desc','symb','unit') 
set label 100 labelWithUnit('desc','symb','unit') 

########################################################
#  Plot
########################################################
set output '#{name}.tex'

plot ${0:sin(x)} with lines