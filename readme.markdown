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

#### Settings

You can easily change some settings by defining the following variables before you load the defaults

* TEXTCOLOR
* GRIDCOLOR
* LINEWIDTH
* POINTSIZE

#### Labels

For better control over the position of the x and y-labels there predefined labels for each axes. 

Axes | Label-ID
------------- | -------------
x | 100
x2 | 101
y | 200
y2 | 201 

Use them in conjunction with `bmargin`, `tmargin`, `rmargin` and `lmargin` 

#### Line Types

Since Gnuplot 5.0 the color and the dash-type are separated in the settings. To use dashes lines just define the `dashtype` in the plot command. 

For plot with `points` or `linepoints` some nice point-types are preset in the line-type definition. To overwrite these just define the `pointtype` in the plot command

**Exambles**

![Test LinestypesPNG](help/test-linestypesPNG.png)


### Color Themes

This Templates are including a nice set of different color themes. To use one of them run 

	load 'colors-[theme].gp'
	
![Test ColorsPNG](help/test-colorsPNG.png)


