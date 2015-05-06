# install some commonly used packages
install.packages(c('corrgram', 'data.table', 'gbm', 'ggplot2', 'jsonlite', 'leaps', 'plyr', 'rJava', 'RJDBC', 'devtools'), repos = 'http://cran.us.r-project.org')

library('devtools')

# install the R application
install_github('keboola/r-luckyguess', ref = "master")
library('keboola.r.luckyguess')