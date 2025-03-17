# InsightEd

### Environment Setup

To run this project, I’ve set up a **virtual environment** using **Miniconda**. Below are the steps to replicate the environment:

1.  **Install Miniconda**: Download Miniconda from [https://docs.conda.io/en/latest/miniconda.html](https://docs.conda.io/en/latest/miniconda.html) and follow the installation instructions for your operating system.
2.  **Create a Conda Environment**:
    ```bash
    conda create --name edu_success_env python=3.8
    ```
3.  **Activate the Environment**:
    ```bash
    conda activate edu_success_env
    ```
4.  **Install Required Packages**:
    -   To install **Jupyter Lab** and **R** packages, use the following:
        ```bash
        conda install -c conda-forge jupyterlab r-essentials
        ```
5.  **Install R Packages**:
    -   Within the Jupyter Lab environment, you’ll need to install R-specific packages such as `dplyr`, `tidyr`, `ggplot2`, `caret`, and `ROCR`. Run the following R commands inside Jupyter Lab:
        ```R
        install.packages("dplyr")
        install.packages("tidyr")
        install.packages("ggplot2")
        install.packages("caret")
        install.packages("ROCR")
        ```
6.  **Launch Jupyter Lab**:
    ```bash
    jupyter lab
    ```
7. **Running Initial Environment (Optional)**:

    ```R
    name: online-education-success
    channels:
      - conda-forge
      - defaults
    dependencies:
      - r-base=4.2.2
      - r-tidyverse
      - r-ggplot2
      - r-irkernel
      - r-dplyr
      - r-readr
      - r-stringr
      - r-forcats
      - r-reshape2
      - r-plotly
      - jupyterlab

    # To create this environment, run:
    # conda env create -f environment.yml

    # To activate the environment, run:
    # conda activate online-education-success

    # To add this R environment as a kernel in Jupyter Lab, run:
    # R -e "IRkernel::installspec(name='online-education-success', displayname='R (online-education-success)')"
    ```