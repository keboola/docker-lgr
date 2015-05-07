# install some commonly used packages
install.packages(c('corrgram', 'data.table', 'gbm', 'ggplot2', 'jsonlite', 'leaps', 'plyr', 'rJava', 'RJDBC', 'devtools'), repos = 'http://cran.us.r-project.org')

library('devtools')

# install the R application
install_github('keboola/redshift-r-client', ref = "master")
install_github('keboola/provisioning-r-client', ref = "master")
install_github('keboola/r-application', ref = "master")
install_github('keboola/r-docker-application', ref = "master")
install_github('keboola/lgr-docker-application', ref = "master")
