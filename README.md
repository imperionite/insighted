# InsightEd

**Empirical Investigation: Identifying Key Factors for Scholarship Selection**

## Introduction

The increasing adoption of online education has opened new opportunities for learners worldwide. However, the success of students in online learning environments depends on a variety of factors, including access to resources, adaptability, and motivation. For scholarship-granting organizations, identifying students who are most likely to thrive in these settings is crucial, especially when opportunities are limited. This study seeks to explore the characteristics associated with student success in online education, using a data-driven approach to determine which factors predict positive learning outcomes.

## Objectives

The primary objectives of this study are:
- To identify key predictors of student success in online education.
- To explore the role of adaptability, access to technology, and motivation in shaping learning outcomes.
- To apply statistical analysis and data visualization techniques to uncover patterns and relationships within the dataset.
- To provide insights that can help scholarship-granting organizations make informed decisions.

## Scope and Delimitation

This study focuses on a dataset of 256 students, including demographic, educational, and technological factors. Key variables include education level, financial condition, internet type, and adaptivity level. The analysis will prioritize the most influential features and their impact on student success in online education. 

The study is limited by the dataset’s size and the specific variables collected. It does not account for external factors such as psychological well-being, family support, or teaching quality, which may also influence success.

## Significance of the Study

This research provides valuable insights for government and non-government organizations offering limited scholarship grants. By identifying students who are most likely to succeed in online education, this study can help optimize scholarship allocation, ensuring that resources are directed toward individuals with the highest potential for long-term achievement.

## Hypothesis

This study will test the following hypotheses to determine the relationships between key variables and student success in online education:
- **H1:** There is a significant association between socio-economic status and online learning success.
- **H2:** Education level significantly impacts adaptivity level.
- **H3:** There is a significant association between access score and online learning success.


* H1: There is a significant association between digital literacy and online learning success.
        * H2: There is a significant association between socio-economic status and online learning success.
        * H3: There is a significant association between access score and online learning success.
  
Appropriate statistical tests such as chi-square tests for categorical associations, t-tests or ANOVA for comparing means across groups, and correlation tests for numeric variables will be applied.

## Exploratory Data Analysis (EDA)

EDA will be conducted to understand the distribution, patterns, and relationships within the dataset. Key steps include:
- **Summary Statistics:** Reviewing measures of central tendency, spread, and frequency distributions.
- **Data Visualization:** Creating histograms, boxplots, and scatterplots to explore individual and joint distributions of key variables.
- **Feature Exploration:** Investigating relationships between variables such as financial condition, education level, internet type, and adaptivity level.
- **Correlation Analysis:** Measuring associations between numeric variables like age and adaptivity level.


## Materials and Methods

### Data Collection
The study utilizes a cleaned dataset containing 256 observations and 15 variables, including demographic, educational, and technological attributes.

### Data Analysis
- **Feature Engineering:** New composite variables will be created to enhance the dataset’s predictive power.
- **Statistical Analysis:** Descriptive statistics, hypothesis testing, correlation analysis, and group comparisons will be conducted.
- **Data Visualization:** Bar plots, boxplots, scatterplots, and heatmaps will be used to illustrate key findings.

### Tools
R programming in Jupyter Lab will be used for data analysis and visualization, ensuring reproducibility and clarity of results.

**Essential Variable Focus:**

* **Success (binary):** Based on adaptivity level.
* **Digital Literacy (categorical):** Engineered from device and IT student.
* **Socio-Economic Status (categorical):** Engineered from financial condition and education level.
* **Access Score (numerical):** Engineered from location, load shedding, internet type, and network type.


### **How I Set Up the Environment**

To run this project, I’ve set up a **virtual environment** using **Miniconda**. Below are the steps to replicate the environment:

1. **Install Miniconda**: Download Miniconda from [https://docs.conda.io/en/latest/miniconda.html](https://docs.conda.io/en/latest/miniconda.html) and follow the installation instructions for your operating system.

2. **Create a Conda Environment**:
   ```bash
   conda create --name edu_success_env python=3.8
   ```

3. **Activate the Environment**:
   ```bash
   conda activate edu_success_env
   ```

4. **Install Required Packages**:
   - To install **Jupyter Lab** and **R** packages, use the following:
     ```bash
     conda install -c conda-forge jupyterlab r-essentials
     ```

5. **Install R Packages**:
   - Within the Jupyter Lab environment, you’ll need to install R-specific packages such as `dplyr`, `tidyr`, `ggplot2`, `caret`, and `ROCR`. Run the following R commands inside Jupyter Lab:
     ```R
     install.packages("dplyr")
     install.packages("tidyr")
     install.packages("ggplot2")
     install.packages("caret")
     install.packages("ROCR")
     ```

6. **Launch Jupyter Lab**:
   ```bash
   jupyter lab
   ```

7. **Run the Notebook**: Once the environment is set up, open the provided **Jupyter Notebook** and execute the cells to replicate the analysis and visualizations.
