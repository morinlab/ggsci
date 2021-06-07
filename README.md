# ggsci  <a href="https://nanx.me/ggsci/"><img src="man/figures/logo.png" align="right" height="180" /></a>

<!-- badges: start -->
[![R-CMD-check](https://github.com/nanxstats/ggsci/workflows/R-CMD-check/badge.svg)](https://github.com/nanxstats/ggsci/actions)
[![CRAN Version](https://www.r-pkg.org/badges/version/ggsci)](https://cran.r-project.org/package=ggsci)
[![Downloads from the RStudio CRAN mirror](https://cranlogs.r-pkg.org/badges/ggsci)](https://cran.r-project.org/package=ggsci)
<!-- badges: end -->

`ggsci` offers a collection of `ggplot2` color palettes inspired by scientific journals, data visualization libraries, science fiction movies, and TV shows.

## Installation

Install `ggsci` from CRAN:

```r
install.packages("ggsci")
```

Or try the development version on GitHub:

```r
# install.packages("devtools")
devtools::install_github("nanxstats/ggsci")
```

[Browse the vignette](https://nanx.me/ggsci/articles/ggsci.html) (or open with `vignette("ggsci")` in R) for a quick-start guide.

## Lymphoma-centric colours

![Cheatsheet](DLBCL_cheatsheet.png)

### General B-NHL subgroups of (or related to) DLBCL

b_cell_nhl_cols=ggsci::get_ash("b-cell")

<img src="b-cell.png" width="200">

|  Pathology  |   hex   |
|:-----------:|:-------:|
| CLL         | #889BE5 |
| MCL         | #F37A20 |
| BL          | #926CAD |
| mBL         | #34C7F4 |
| PMBL        | #227C9D |
| FL          | #EA8368 |
| tFL         | #FF8595 |
| COMFL       | #8BBC98 |
| DLBCL       | #479450 |
| HGBL-NOS    | #294936 |
| HGBL-DH/TH  | #7A1616 |
| PBL         | #E058C0 |
| CNS         | #E2EF60 |
| THRLBCL     | #A5F2B3 |
| MM          | #CC9A42 |
| SCBC        | #8c9c90 |
| UNSPECIFIED | #cfba7c |

## Cell of origin and gene expression subgroups

```r
coo_cols=ggsci::get_ash("coo")
```

| COO         | hex     |
|-------------|---------|
| DHITsig+    | #D62828 |
| DHITsig-IND | #003049 |
| DHITsig-    | #B1740F |
| GCB         | #F58F20 |
| ABC         | #05ACEF |
| UNCLASS     | #05631E |

## Genetic classes from Chapuy et al

```r
harvard_cols=ggsci::get_ash("harvard")
```

| Harvard | hex     |
|---------|---------|
| C3      | #721F0F |
| C4      | #C41230 |
| C5      | #3B5FAC |
| C1      | #7F3293 |
| C2      | #5b6d8a |
| C0      | #ACADAF |

## LymphGen classes from Schmitz et al with updates described in Wright et al

```r
lymphgen_cols=ggsci::get_ash("lymphgen")
```

| LymphGen | hex     |
|----------|---------|
| EZB-MYC  | #52000F |
| EZB      | #721F0F |
| EZB-COMP | #C7371A |
| ST2      | #C41230 |
| ST2-COMP | #EC3251 |
| MCD      | #3B5FAC |
| MCD-COMP | #6787CB |
| BN2      | #7F3293 |
| BN2-COMP | #A949C1 |
| N1       | #55B55E |
| N1-COMP  | #7FC787 |
| A53      | #5b6d8a |
| Other    | #ACADAF |

## HMRN classes from Lacy et al with updates described in Runge et al

```r
hmrn_cols=ggsci::get_ash("hmrn")
```

| HMRN       | hex     |
|------------|---------|
| BCL2-MYC   | #52000F |
| BCL2       | #721F0F |
| SOCS1/SGK1 | #D66B1F |
| TET2/SGK1  | #C41230 |
| MYD88      | #3B5FAC |
| NOTCH2     | #7F3293 |
| NOTCH1     | #55B55E |
| Other      | #ACADAF |


## Gallery

### NPG

<img src="https://i.imgur.com/ZjCm5ng.png" width="100%" alt="npg">

### AAAS

<img src="https://i.imgur.com/Wt8z0Xs.png" width="100%" alt="aaas">

### NEJM

<img src="https://i.imgur.com/WXREdrP.png" width="100%" alt="nejm">

### Lancet

<img src="https://i.imgur.com/5b01l68.png" width="100%" alt="lancet">

### JAMA

<img src="https://i.imgur.com/dmZO9e5.png" width="100%" alt="jama">

### JCO

<img src="https://i.imgur.com/3t8Q1kF.png" width="100%" alt="jco">

### UCSCGB

<img src="https://i.imgur.com/6HTPa1B.png" width="100%" alt="ucscgb">

### D3

<img src="https://i.imgur.com/mKhrUyT.png" width="100%" alt="d3">

### LocusZoom

<img src="https://i.imgur.com/JqdxnuF.png" width="100%" alt="locuszoom">

### IGV

<img src="https://i.imgur.com/bLB8Ofe.png" width="100%" alt="igv">

### COSMIC

<img src="https://i.imgur.com/5xp1TZf.png" width="100%" alt="cosmic-hallmarks-light">

<img src="https://i.imgur.com/B4w0K3f.png" width="100%" alt="cosmic-hallmarks-dark">

<img src="https://i.imgur.com/hrqbmAa.png" width="100%" alt="cosmic-signature-substitutions">

### UChicago

<img src="https://i.imgur.com/Eb8agLj.png" width="100%" alt="uchicago">

### Star Trek

<img src="https://i.imgur.com/HYs7OzD.png" width="100%" alt="startrek">

### Tron Legacy

<img src="https://i.imgur.com/RrF3kp3.png" width="100%" alt="tron">

### Futurama

<img src="https://i.imgur.com/IeBjLy7.png" width="100%" alt="futurama">

### Rick and Morty

<img src="https://i.imgur.com/8zKuCPz.png" width="100%" alt="rickandmorty">

### The Simpsons

<img src="https://i.imgur.com/zBqZjpX.png" width="100%" alt="simpsons">

### GSEA

<img src="https://i.imgur.com/20vxsS9.png" width="100%" alt="gsea">

### Material Design

<img src="https://i.imgur.com/W2lVixt.png" width="92%" alt="material">

## Contribute

To contribute to this project, please take a look at the [Contributing Guidelines](CONTRIBUTING.md) first. Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
