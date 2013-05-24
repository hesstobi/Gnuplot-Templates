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
set loadpath #{templatedir}

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
#  Farben
########################################################
load 'cdtudcolors.gp'

# Standardfarben

# GRIDCOLOR = HKS41_100 # "#000000"
# TEXTCOLOR = HKS41_100 # "#000000"

########################################################
#  Line Types
########################################################

# Set Linewidth and Pointsize
LINEWIDTH = 3
POINTSIZE = 0.5

load 'linetypes.gp'


########################################################
#  Layout
########################################################
load 'stdlayout.gp'

# Number format see <help format specifiers>

# set format "\\num{%g}"   # Default with siunitx 
# set format "\\num{%.2f}" # Fixed point notation
# set format "\\SI{%P}{\\pi}" # Multible of pi

# Margins

set lmargin 7
# set rmargin 6
# set bmargin 4
# set tmargin 4


########################################################
#  Labels
########################################################

set xlabel labelWithArrow('desc','symb','unit')
set label 100 labelWithArrow('desc','symb','unit')


# SPILTAXES
# set label SPILTAXES at graph 0,0.07 center rotate by 20 textcolor rgb TEXTCOLOR front offset -0.1,0

# set key width -1

########################################################
#  Plot
########################################################
set output '#{name}.tex'

plot ${0:sin(x)} with lines