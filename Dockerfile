FROM keboola/docker-base-r
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

WORKDIR /home

# Initialize the LGR runner
RUN git clone https://github.com/keboola/docker-lgr.git ./

# Install some commonly used R packages and the R application
RUN Rscript ./init.R

# Run the application
ENTRYPOINT Rscript ./main.R /data/
