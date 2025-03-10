# InsightEd


## Focus Question

*Who would most likely be successful in an online community that is worth giving a full scholarship coverage for the entire stay in basic education and/or higher education?*

### Plan of Action

To conduct an empirical investigation to the provided dataset and to focus on the variables that give insights into the proper selection of scholarship recipients.


**Empirical Investigation: Identifying Key Factors for Scholarship Selection**


### Introduction

The increasing adoption of online education has opened new opportunities for learners worldwide. However, the success of students in online learning environments depends on a variety of factors, including access to resources, adaptability, and motivation. For scholarship-granting organizations, identifying students who are most likely to thrive in these settings is crucial, especially when opportunities are limited. This study seeks to explore the characteristics associated with student success in online education, using a data-driven approach to determine which factors predict positive learning outcomes. This study focuses on an online community for students in basic and higher education.

### Objectives

The primary objectives of this study are:

-   To identify key predictors of student success in online education.
-   To explore the role of adaptability, access to technology, and motivation in shaping learning outcomes.
-   To apply statistical analysis and data visualization techniques to uncover patterns and relationships within the dataset.
-   To provide insights that can help scholarship-granting organizations make informed decisions.

### Scope and Delimitation

This study focuses on a dataset of 256 students, including demographic, educational, and technological factors. Key variables include education level, financial condition, internet type, and adaptivity level. The analysis will prioritize the most influential features and their impact on student success in online education. This is a cross-sectional study.

The study is limited by the dataset’s size and the specific variables collected. It does not account for external factors such as psychological well-being, family support, or teaching quality, which may also influence success.

It is important to acknowledge that this study uses "high adaptivity level" as a proxy for "online learning success." While adaptivity is a crucial factor in online learning, it does not encompass all aspects of success. Future studies could explore more comprehensive measures of success, such as course completion rates, grades, or student satisfaction.

### Significance of the Study

This research provides valuable insights for government and non-government organizations offering limited scholarship grants. By identifying students who are most likely to succeed in online education, this study can help optimize scholarship allocation, ensuring that resources are directed toward individuals with the highest potential for long-term achievement.

### Hypotheses

This study will test the following hypotheses to determine the relationships between key variables and student success in online education:

-   **H1:** There is a significant association between digital literacy and online learning success.
-   **H2:** There is a significant association between socio-economic status and online learning success.
-   **H3:** There is a significant association between access score and online learning success.

**Definition of Online Learning Success:** In this study, "online learning success" is operationally defined as "high adaptivity level" as reported in the dataset. This definition serves as a proxy for success, acknowledging that adaptivity is a key component of effective online learning.

### Exploratory Data Analysis (EDA)

EDA will be conducted to understand the distribution, patterns, and relationships within the dataset. Key steps include:

-   **Summary Statistics:** Reviewing measures of central tendency, spread, and frequency distributions.
-   **Data Visualization:** Creating histograms, boxplots, and scatterplots to explore individual and joint distributions of key variables.
-   **Feature Exploration:** Investigating relationships between variables such as financial condition, education level, internet type, and adaptivity level.
-   **Correlation Analysis:** Measuring associations between numeric variables like age and adaptivity level.

### Logistic Regression
- A binary variable, `high_adaptivity`, will be created where "High" adaptivity is 1 and "Moderate" or "Low" adaptivity is 0. This variable represents "online learning success" as defined in this study.

- The `glm()` function in R will be used with the `binomial` family to model the probability of high adaptivity based on the engineered variables: digital literacy, socio-economic status, and access score.

- The coefficients, odds ratios (using `exp(coef(model))`), and p-values will be interpreted to understand the impact and significance of each variable.

Example R code:
        ```R
        data$high_adaptivity <- ifelse(data$adaptivity_level == "High", 1, 0)
        data$high_adaptivity <- as.factor(data$high_adaptivity)
        model <- glm(high_adaptivity ~ digital_literacy + socio_economic_status + access_score, data = data, family = binomial)
        summary(model)
        exp(coef(model))
        ```


### Materials and Methods

#### Data Collection

The study utilizes a cleaned dataset containing 256 observations and 15 variables, including demographic, educational, and technological attributes.

#### Data Analysis

-   **Feature Engineering:**
    -   **Digital Literacy (categorical):** Created from the combination of "device" and "it\_student," with categories such as "High Digital Literacy" (computer and IT student) and "Low Digital Literacy" (mobile and not IT student).
    -   **Socio-Economic Status (categorical):** Created by combining "financial\_condition" and "education\_level" to create categories such as "High socioeconomic status" (Rich and College), "Medium socioeconomic status" (Mid and School), and "Low socioeconomic status" (Poor and School).
    -   **Access Score (numerical):** Calculated by assigning numerical values to each level of the variables "location," "load\_shedding," "internet\_type," and "network\_type," and then summing the scores.
-   **Statistical Analysis:** Descriptive statistics, hypothesis testing (chi-square tests), correlation analysis, and group comparisons will be conducted. **Logistic regression will be used to model the relationship between engineered variables and high adaptivity.**
-   **Data Visualization:** Bar plots, boxplots, scatterplots, and heatmaps will be used to illustrate key findings.

#### Tools

R programming in Jupyter Lab will be used for data analysis and visualization, ensuring reproducibility and clarity of results.

### Essential Variable Focus

-   **Success (binary):** Based on adaptivity level (High vs. Not High).
-   **Digital Literacy (categorical):** Engineered from device and IT student.
-   **Socio-Economic Status (categorical):** Engineered from financial condition and education level.
-   **Access Score (numerical):** Engineered from location, load shedding, internet type, and network type.

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