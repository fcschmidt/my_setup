#!/bin/bash
#
#  Install and Config R & RStudio
#  Select cran mirror
#  https://cran.r-project.org/mirrors.html
#
# Install R
CRAN=$(cran-r.c3sl.ufpr.br)
#
apt-get update
apt-get install r-base
apt-get install r-base-dev
#
# Ubuntu Package for R
# https://cran.rstudio.com/
deb https://<cran-r.c3sl.ufpr.br>/ trusty-backports main restricted universe

# View Ubunut version
# https://wiki.ubuntu.com/Releases
#
set -e
set -u
set -x
#
. /etc/lsb-release   # get ubuntu version number
#
# Version Ubuntu 17.04
if ["DISTRIB_RELEASE" == "17.04"];then
    deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu zesty/
fi
# Version Ubuntu 16.04
if ["DISTRIB_RELEASE" == "16.04"];then
    deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu xenial/
fi
# Version Ubuntu 14.04 LTS
if ["DISTRIB_RELEASE" == "14.04"];then
    deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu trusty/
fi
# Install Packages
# via cran mirror
R --save << end
install.packages("ggplot2", repo=c("https://cran-r.c3sl.ufpr.br/"))
end

# Update Packages
R --save << end
update.packages(lib.loc = "/usr/local/lib/R/site-library")
# Install packages for using R on Jupyter Notebook
install.packages('devtools')
end
#
# Install dependence
apt-get install libssl-dev libcurl4-openssl-dev
#
# Install R packages to Jupyter
R --save << end
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'))
devtools::install_github(paste0('IRkernel/', c('repr', 'IRdisplay', 'IRkernel')))
IRkernel::installspec()
end


# Install for other Distribution and
# other Operational System 
# https://cran.rstudio.com/
