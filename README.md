# Cognitive control and motivated reasoning

All data, code and generated output is openly available in this
repository.

## Computational reproducibility

#### Raw data

**Important:** As raw data files were > 100 MB, they were zipped before uploading them to the repository. Unpack them in order to use them. 

#### Dependencies

Provided scripts are .qmd files, containing code in R 4.4.1 written in RStudio. 
To render files, Quarto (<https://quarto.org/>) needs to be installed. 
For Bayesian models, we use CMDStanR as backend, which needs to be installed before
analyses can be run (<https://mc-stan.org/cmdstanr/>).

We used `groundhogR` as version control for packages (set date: 01.07.2024). 
If packages are installed for the first time, it may be needed to restart the R session.
Other than that the set up in scripts should automatically download and
install the same version of packages that we used.

#### Run all

All scripts can be run - once packages and dependencies are installed - by
simply running the code in the provided R script 00_run_all.R. If you
download all provided materials, brms model objects will already exist
based on our analyses. If you wish to re-fit the models, you need to
clear the folder 02_output/models first. If you do so, some
numeric results may slightly deviate, but the general results should
remain the same.

## Folder structure:

### 01_data

-   raw: Includes raw (primary) data from Gorilla
-   cleaned: Cleaned (reshaped, filtered) data
-   scored: Data with additional average or sum scores and measures
-   analysis: Combines cleaned (processed) data into one data frame that
    is used for analyses

If you simply want to reproduce the main analyses (e.g.,
pol_issue_models.qmd), you only need the data provided in analysis.

### 02_scripts

Includes the scripts for data cleaning, data preparations, descriptive
checks, and all model fits, checks, and interpretations.

-   00_run_all.R: A R script that can be used to run and render all
    scripts at once. Dependencies may need to be installed for this to work. 
    We suggest running individual scripts in the case of errors.
-   01_gorilla_to_tidy.qmd: Combines raw data files from Gorilla in a
    tidy way
-   02_gng_preparations.qmd: Processes data from the Go / No-Go task
-   03_questionnaire_preparations.qmd: Processes questionnaire data
-   04_fake_news_preparations.qmd: Processes fake news task data and
    combines data for analysis
-   05_descriptive_checks.qmd: Some random descriptive checks
-   06_pol_issue_models.qmd: Models of political topics using
    issue_motive as predictor
-   07_nonpol_issue_models.qmd: Models of performance and neutral topics
    using issue_motive as predictor
-   08_issue_figures_tables.qmd: Figures and tables based on
    issue_motive
-   09_pol_ideo_models.qmd: Models of political topics using ideo_motive
    as predictor
-   10_nonpol_ideo_models.qmd: Models of performance and neutral topics
    using issue_motive as predictor
-   11_ideo_figures_tables: Figures and tables based on ideo_motive
-   12_robust_models.qmd

Note: pol\_ stands for political vignettes, and nonpol\_ for performance
and neutral vignettes. For each type (pol\_ and nonpol\_), analyses are
based on motives coded from the opinion issue questionnaire (\_issue)
and one for analyses based on motives coded from overall ideology,
general-selfenhancement, or arbitrary assignment (single left/right
scale, \_ideo).

### 03_output

Includes the output generated in all steps in different subfolders.

-   models: All brms model objects

-   diagnostics: diagnostic plots of all brms model objects

-   tables: generated descriptive / model summary tables

-   figures: generated figures (mainly displaying the results)
