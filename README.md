

<!-- README.md is generated from README.Rmd. Please edit that file -->


# PROstat5

<!-- badges: start -->
<!-- badges: end -->

## Description

PROstat5 is an R package designed for bioinformatics researchers, molecular biologists, and computational chemists focusing on the study of STAT5 (Signal Transducer and Activator of Transcription 5) proteins. This package offers a robust set of tools to interface with the Protein Data Bank (PDB), enabling users to efficiently retrieve, analyze, and visualize STAT5 structures and their interactions. The package is particularly adept at exploring protein-ligand interactions, understanding STAT5's role in various signaling pathways, and examining its interactions with other proteins and potential inhibitors. Furthermore this package can be used to help people to find suitable PROTACs for STAT5


## Installation

To install the latest version of the package:
``` r
require("devtools")
devtools::install_github("kannai99/PROstat5", build_vignettes = TRUE)
library("PROstat5")
```
To run the Shiny app: Under construction


## Overview

```
ls("package:PROstat5")
data(package = "PROstat5") 
browseVignettes("PROstat5")
```


## Contributions

The author of the package is Hyunwoo Kwon. 
## References


Hadley Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.
Wilkinson, Leland. The Grammar of Graphics. Springer-Verlag, 2005.
  

## Acknowledgements

This package was developed as part of an assessment for 2023 BCB410H: Applied Bioinformatics course at the University of Toronto, Toronto, CANADA. 

## Package Structure

The package tree structure is provided below.

``` r
- PROstat5
  |- R
    |- data.R
    |- show Expression Plot.R
  |- man
    |- extract data
    |- show_expression_plot.Rd
    |- show_stat5_structure.Rd
  |- tests
    |- testthat.R
  |- vignettes
    |- .gitignore
  |- DESCRIPTION
  |- LICENSE
  |- PROstat5.Rproj
  |- README
```
   
