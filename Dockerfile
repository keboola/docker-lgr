FROM quay.io/keboola/docker-base-r

ENV APP_VERSION 0.0.2

WORKDIR /home

# Initialize the LGR runner
COPY . /home/

# Install some commonly used R packages and the R application
RUN Rscript ./init.R

# Run the application
ENTRYPOINT Rscript ./main.R /data/
