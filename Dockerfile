FROM quay.io/keboola/docker-base-r:3.2.1-k

WORKDIR /home

# Initialize the LGR runner
COPY . /home/

# Install some commonly used R packages and the R application
RUN Rscript ./init.R

# Run the application
ENTRYPOINT Rscript ./main.R /data/
