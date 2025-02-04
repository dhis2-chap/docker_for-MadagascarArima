
# Dockerfile for for R base image with INLA installed
# after installation, can be used interactively with:
# sudo docker run --rm -it docker_r_base bash
FROM ghcr.io/dhis2-chap/docker_r_inla:master

RUN R -e 'r = getOption("repos"); r["CRAN"] = "http://cran.us.r-project.org"; options(repos = r); install.packages(c("fable"), repos=c(getOption("repos"), dep=TRUE))'
RUN R -e 'r = getOption("repos"); r["CRAN"] = "http://cran.us.r-project.org"; options(repos = r); install.packages(c("distributional"), repos=c(getOption("repos"), dep=TRUE))'
