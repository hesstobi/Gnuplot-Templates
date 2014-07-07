## What is this for?

This are my default definitions for plotting and working effective with gnuplot.

## Installation

Too install the templates just store is somewhere on your computer and let Gnuplot know about it. I store these file in the Application Support Folder. To do same type and execute following in the console:

	$ cd ~/Library/Application Support/
	$ git clone https://github.com/hesstobi/Gnuplot-Templates.git Gnuplot

And than add this folder to the GNUPLOT\_LIB Enviroment Variable by adding following line to your .bash_profile

    export GNUPLOT_LIB="$HOME/Library/Application Support/Gnuplot:$GNUPLOT_LIB"

## Usage

###   Essentials Defaults

All essential default are saved in the `default.gp` and the `layout-default.gp`. Simple 

	load 'defaults.gp'

to use the settings. Here is example plot with this layout:

![Default Layout](help/test-defaultsPNG.png)

You can easily change some settings by defining the following variables

* TEXTCOLOR
* GRIDCOLOR
* LINEWIDTH
* POINTSIZE

	Dashed Lines (`dashtype`)  | Linespoint (`with linespoint`)
	![Test Linetypes DashedPNG](help/test-linetypes-dashedPNG.png)  | ![Test Linetypes PointsPNG](help/test-linetypes-pointsPNG.png)


    
![alt text](help/Plot_test.pdf[2] "Title")