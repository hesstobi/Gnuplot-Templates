# Settings for Latex Terminals

set format "\\num{%g}" # Set number fomrat to siunitx

# Lables

arrowLabel(str) = sprintf("%s {\\tikz[baseline] \\draw[-latex,thick] (0,0.5ex) -- (7ex,0.5ex);}",str)

shortLabel(symb,unit) = sprintf("$%s$ in \\si{%s}",symb,unit)
shortArrowLabel(symb,unit) = arrowLabel(shortLabel(symb,unit))

longLabel(desc,symb,unit) = sprintf("%s %s",desc,shortLabel(symb,unit))
longArrowLabel(desc,symb,unit) = arrowLabel(longLabel(desc,symb,unit))

shortPuLabel(symb,unit) = sprintf("$\\nicefrac{%s}{%s}$",symb,unit)
shortPuArrowLabel(symb,unit) = arrowLabel(shortPuLabel(symb,unit))

longPuLabel(desc,symb,unit) = sprintf("%s %s",desc,shortPuLabel(symb,unit))
longPuArrowLabel(desc,symb,unit) = arrowLabel(longPuLabel(desc,symb,unit))

if (LOCALE eq 'de_de') {
     shortLabel(symb,unit) = sprintf("$\\nicefrac{%s}{\\si{%s}}$",symb,unit)
}