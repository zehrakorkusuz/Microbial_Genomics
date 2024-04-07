# Microbial_Genomics
Oral Microbiome &amp; Metagenomic analysis for the Characterization of a uSGB

Zehra Korkusuz, Eevi Sipponen

# Steps we followed 

## 1. CheckM Quality Analysis & Taxonomic Assignment

This document provides a step-by-step guide for downloading, decompressing, and analyzing metagenome-assembled genomes (MAGs) belonging to a specific gene bank (SGB).

#### Prerequisites

- Ensure you have `conda` and `bunzip2` installed on your system.
- Download the ZIP file containing the MAGs.

#### Steps

1. **Unzip the Downloaded File**

   Use `bunzip2` to decompress the downloaded ZIP file. This file contains MAGs related to a specific SGB.

2. **Prepare for Quality Analysis with CheckM**

   First, create a directory to store output files generated by CheckM analysis:

   ```bash
   mkdir checkm_output

## 2. Gene Annotation with Prokka
