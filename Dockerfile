FROM rocker/rstudio:4.4.2

USER root

RUN Rscript -e 'install.packages("remotes", repos = "https://cloud.r-project.org")'

RUN Rscript -e 'remotes::install_version("cowsay", version = "0.8.0", repos = "https://cloud.r-project.org")'

RUN Rscript -e 'library(cowsay)'

USER rstudio

# test: trigger workflow, test 2