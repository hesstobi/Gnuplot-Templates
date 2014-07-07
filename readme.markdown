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

Dashed Lines (`dashtype`) | Linespoint (`with linespoint`)
:-------------: | :-------------:
![Test Linetypes DashedPNG](help/test-linetypes-dashedPNG.png) | ![Test Linetypes PointsPNG](help/test-linetypes-pointsPNG.png)


### Color Themes

This Templates are including a nice set of different color themes. To use one of them run 

	load 'colors-[theme].gp'
	
colors-qualitative-clusterd.gp | colors-qualitative-paird.gp | colors-sequential-Gray.gp 
:-------------: | :-------------: | :-------------:
![Test Colors Qualitative ClusterdPNG](help/test-colors-qualitative-clusterdPNG.png) | ![Test Colors Qualitative PairedPNG](help/test-colors-qualitative-pairedPNG.png) | ![Test Colors Sequential GrayPNG](help/test-colors-sequential-GrayPNG.png)
**colors-sequential-darkBlue.gp**  | **colors-sequential-darkGreen.gp**  | **colors-sequential-darkPurpel.gp** 
![Test Colors Sequential DarkBluePNG](help/test-colors-sequential-darkBluePNG.png) | ![Test Colors Sequential DarkGreenPNG](help/test-colors-sequential-darkGreenPNG.png) | ![Test Colors Sequential DarkPurpelPNG](help/test-colors-sequential-darkPurpelPNG.png)
**colors-sequential-lightBlue.gp** | **colors-sequential-lightGreen.gp**  | **colors-sequential-lightPurpel.gp** 
![Test Colors Sequential LightBluePNG](help/test-colors-sequential-lightBluePNG.png) | ![Test Colors Sequential LightGreenPNG](help/test-colors-sequential-lightGreenPNG.png) | ![Test Colors Sequential LightPurpelPNG](help/test-colors-sequential-lightPurpelPNG.png)
**colors-sequential-lightOrange.gp** |
![Test Colors Sequential LightOrangePNG](help/test-colors-sequential-lightOrangePNG.png) | 


