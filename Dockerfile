FROM keboola/base
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

# Create html folder under the R directory (name of directory depends on version) - required for some packages
RUN find /usr/share/doc/ -name R* -exec mkdir '{}/html' \;

WORKDIR /home

# Initialize 
RUN git clone https://github.com/keboola/docker-lgr ./

# Install some commonly used R packages and the R application
RUN Rscript ./init.R

# Run the application
ENTRYPOINT Rscript ./main.R
