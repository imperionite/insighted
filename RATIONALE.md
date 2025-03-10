# InsightEd

## Focus Question

Who would most likely be successful in an online community that is worth giving a full scholarship coverage for the entire stay in basic education and/or higher education?

### Empirical Investigation

Identifying Key Factors for Scholarship Selection


## **Objectives**

### **General Objective:**
To develop a predictive model that identifies factors contributing to online education success for scholarship recipients, with a focus on adaptability, access, and motivation.

### **Specific Objectives:**
1. To quantify the impact of **socioeconomic access** (financial condition, internet, device) on student **adaptability**.
2. To assess the relationship between **student demographics** (age, gender, education level) and online education success.
3. To engineer features that represent **student motivation** and engagement within the online learning environment (if possible with current data).
4. To develop a **statistical model** that predicts online education success (adaptability) for scholarship recipients.
5. To **visualize** the key predictors of online education success using R and Jupyter Lab.
6. To provide actionable insights for scholarship providers to improve selection and support processes.

## **Limitations and Delimitations**

### **Limitations:**
- The **dataset’s proxy for “motivation”** may be limited; ideally, more direct measures would be included.
- **Generalizability** may be limited due to the dataset’s specific context and size.
- The dataset is **cross-sectional**, therefore **causality** cannot be determined.
- The dataset may not contain all the variables needed to measure **“online education success”**.

### **Delimitations:**
- This study is confined to the **provided dataset** and its available variables.
- The analysis will primarily utilize **R programming** and **Jupyter Lab** for statistical modeling and visualization.
- The focus is on predicting **adaptability** as a proxy for online education success.
- The study will focus on the **provided population**.

## **Significance of the Study**

### **Scholarship Optimization**:
The study provides a data-driven framework for scholarship providers to identify students with a higher likelihood of success in online education.

### **Targeted Support**:
Insights from the predictive model can inform the development of targeted support programs for scholarship recipients, ensuring they have the necessary resources and support to thrive.

### **Increased Retention and Completion**:
By identifying at-risk students, scholarship providers can intervene early to improve **retention** and **completion rates** for online learners.

### **Equitable Access**:
The study emphasizes the importance of addressing **socioeconomic barriers** to online education success, ensuring equitable access to education for all students, regardless of their background.

## **Materials and Methods**

### **Materials:**
- The provided **dataset** (CSV format).
- **R programming language** for statistical analysis and modeling.
- **Jupyter Lab** environment for coding and visualizations.
- Key **R packages** used:
  - `dplyr`, `tidyr` for data cleaning and manipulation.
  - `ggplot2`, `plotly` for data visualization.
  - `caret` for machine learning model training.
  - `ROCR` for model evaluation.

### **Methods:**

#### **Data Preprocessing:**
1. **Data cleaning** and **variable encoding** to prepare the dataset for analysis.
2. **Feature engineering** to create new variables representing **access** (e.g., Access Index) and **motivation** (e.g., self-reported LMS usage).

#### **Exploratory Data Analysis (EDA):**
1. Descriptive statistics to summarize the data.
2. Visualizations (e.g., histograms, box plots, scatter plots) to explore distributions and relationships.

#### **Feature Selection:**
1. Techniques to identify the most relevant predictors of online education success, such as correlation analysis and feature importance from models.

#### **Model Development:**
1. Building a **logistic regression model** or other suitable models to predict **adaptability** (proxy for success).
2. **Model training** using **cross-validation** and evaluating performance using appropriate metrics.

#### **Model Evaluation:**
1. Assess model performance using metrics such as **accuracy**, **precision**, **recall**, and **AUC**.
2. Analyze the **coefficients** and **feature importance** to interpret which factors most impact success.

#### **Visualization:**
1. Use **R**'s `ggplot2` and `plotly` packages to create visualizations that communicate the results and key insights.
2. Create visualizations like **ROC curves**, **precision-recall curves**, and **feature importance charts**.

#### **Interpretation and Recommendations:**
1. Interpret the findings of the predictive model and provide actionable recommendations for scholarship providers to improve their selection processes and provide targeted support.

## **How to Set Up the Environment**

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

## **Conclusion**

This project provides a comprehensive analysis of the factors that predict success for scholarship recipients in online education. By focusing on **adaptability**, **access**, and **motivation**, we aim to create actionable insights for scholarship providers to optimize their selection processes and better support their recipients. The model and visualizations presented here highlight the importance of socioeconomic factors and personal traits in online learning success, providing a solid foundation for future research and practical application.



