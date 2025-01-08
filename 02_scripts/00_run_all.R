# CODE TO RUN ALL SCRIPTS ---------------------------------------------------

# use groundhog to make code maximally reproducible
if (!require("groundhog", quietly = TRUE)) {
  install.packages("groundhog")
}
library("groundhog")

# use groundhog to install and load packages
pkgs <- c("here",         # System path management
          "tidyverse",    # ggplot, dplyr, %>%, and friends
          "quarto",       # Render qmd files
          "devtools"      # Install external packages
)

groundhog.library(pkgs, "2024-07-01") 

# Make sure to install dependencies: CmdStanR and Quarto

# I use the faster cmdstanr backend for Stan in the place of rstan
# to do so install the cmdstanr package first: https://mc-stan.org/cmdstanr/
# Then run cmdstanr::install_cmdstan() to install cmdstan on your computer.
# RTools must be installed as well. For more info see 
# https://mc-stan.org/cmdstanr/articles/cmdstanr.html#introduction

# install.packages("cmdstanr", repos = c('https://stan-dev.r-universe.dev', getOption("repos")))
# cmdstanr::install_cmdstan()

# For Quarto see https://quarto.org/docs/get-started/

# Define the folder path containing the .qmd files
path <- here("02_scripts")

# List all .qmd files in the folder
qmd_files <- list.files(path, pattern = "\\.qmd$", full.names = TRUE)

# Execute each .qmd file
for (file in qmd_files) {
  cat("Executing:", file, "\n")
  quarto::quarto_render(file)
}

cat("All scripts executed successfully.\n")
