FROM keboola/base
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

# Install packages
RUN yum -y install \
	libcurl \
	libcurl-devel \
	libxml2-devel \
	libgit2-dev \
	R \
	git

# Create html folder under the R directory (name of directory depends on version) - required for some R packages
RUN find /usr/share/doc/ -name R* -exec mkdir '{}/html' \;

WORKDIR /home

# Initialize the LGR runner
RUN git clone https://github.com/keboola/docker-lgr.git ./

# Install some commonly used R packages and the R application
RUN Rscript ./init.R

# Run the application
ENTRYPOINT Rscript ./main.R /data/
