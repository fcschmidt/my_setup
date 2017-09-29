#!/bin/bash
#
#  Install and Config R & RStudio
#

# Install R

# Install Packages
R --save << end
install.packages("ggplot2", repo=c("https://cran-r.c3sl.ufpr.br/"))
end
