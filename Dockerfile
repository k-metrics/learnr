FROM kmetrics/jverse

# Copy your repository contents to the image
COPY --chown=rstudio:rstudio . ${HOME}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

