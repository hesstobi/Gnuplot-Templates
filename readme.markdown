## What is this for?

This are my default definitions for plotting and working effective with gnuplot.

## Installation

Too install the templates just store is somewhere on your computer and let Gnuplot know about it. I store these file in the Application Support Folder. To do same type and execute following in the console:

	$ cd ~/Library/Application Support/
	$ git clone https://github.com/hesstobi/Gnuplot-Templates.git Gnuplot

And than add this folder to the GNUPLOT\_LIB Enviroment Variable by adding following line to your .bash_profile

    export GNUPLOT_LIB="$HOME/Library/Application Support/Gnuplot:$GNUPLOT_LIB"

## Usage

###  Main Defaults

Variables, Linetypes and loading my default layout is realized in the defaults.gp. Thus

![Test DefaultsPNG](help/test-defaultsPNG.png)


### Variablen

* TEXTCOLOR
* GRIDCOLOR
* LINEWIDTH
* POINTSIZE



    
![alt text](help/Plot_test.pdf[2] "Title")