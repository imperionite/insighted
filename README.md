# InsightEd

In the rapidly evolving world of online education, it is essential to understand the factors that contribute to students' success. This project stems from a desire to develop a predictive model that identifies key factors influencing online education success for scholarship recipients. The model’s primary focus is on three core aspects: adaptability, access, and motivation.

The research question for this project, *“What factors predict success in online education for scholarship recipients, particularly focusing on adaptability, access, and motivation?”*, emerged from a combination of my interest in understanding what makes students succeed in online environments and the need to provide actionable insights for scholarship providers.

The storyline, *“The Long Game: Predicting Success for Scholarship Recipients in Online Education”*, centers around the idea that online education success is not simply about grades but involves deeper factors like **adaptability** to the online environment, **access to technology**, and **motivation** to succeed. Scholarship recipients, in particular, face unique challenges related to socioeconomic status, internet access, and available resources. By identifying these factors, I aim to provide a predictive model that can help scholarship providers better assess which students are most likely to succeed in online education.

This empirical investigation employs **statistical analysis** and **data visualization** using **R programming** within a **Jupyter Lab** environment. The dataset, provided for this project, contains variables related to student demographics, access to resources, and online learning behaviors, all of which are crucial for understanding and predicting online education success.

This project provides a comprehensive analysis of the factors that predict success for scholarship recipients in online education. By focusing on **adaptability**, **access**, and **motivation**, we aim to create actionable insights for scholarship providers to optimize their selection processes and better support their recipients. The model and visualizations presented here highlight the importance of socioeconomic factors and personal traits in online learning success, providing a solid foundation for future research and practical application.

## Focus Question

Who would most likely be successful in an online community that is worth giving a full scholarship coverage for the entire stay in basic education and/or higher education?

### Storyline

**The Long Game: Predicting Success for Scholarship Recipients in Online Education**

Success in online education is more than just completing assignments and passing exams — it’s about adapting to the online learning environment, maintaining motivation, and overcoming barriers to access. This story explores how specific traits, such as adaptability, self-motivation, and access to resources, impact scholarship recipients' ability to succeed in an online educational setting. By analyzing the interplay between financial resources, internet connectivity, and individual adaptability, we aim to predict the likelihood of long-term success, including retention, graduation rates, and post-graduation outcomes. This project provides insights into which factors most influence the success of students who are awarded scholarships for their online education journey.

## Empirical Investigation

Predicting Online Education Success for Scholarship Recipients: The Role of Adaptability, Access, and Motivation


## **Project Objectives**

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

#### **Hypotheses**

As part of the predictive model development, I will test the following hypotheses:

1. **Socioeconomic Access and Adaptability**:
   - Hypothesis: There is a significant relationship between socioeconomic access (financial condition, internet, device) and student adaptability in online education.

2. **Demographics and Online Education Success**:
   - Hypothesis: Student demographics (age, gender, education level) significantly influence success in online education.

3. **Motivation and Online Education Success**:
   - Hypothesis: Motivation and engagement in online learning are significant predictors of success for scholarship recipients.

4. **Adaptability and Long-Term Success**:
   - Hypothesis: Adaptability is a key predictor of long-term success, including retention and graduation rates for scholarship recipients in online education.

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
   conda create -n r_env -c conda-forge r-base r-essentials jupyterlab

   ```

3. **Activate the Environment**:
   ```bash
   conda activate r_env
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


### **Breakdown of Tasks**

---

#### **Phase 1: Setup and Data Preprocessing**
- **Objective**: Prepare the development environment and clean the dataset.
- **Tasks**:
  - Set up the virtual environment using Miniconda and install necessary libraries (R, Jupyter Lab, etc.).
  - Load the dataset and inspect it for missing values, inconsistencies, and outliers.
  - Clean the data, handle missing values, and encode categorical variables (e.g., gender, education level).
  
---

#### **Phase 2: Exploratory Data Analysis (EDA)**
- **Objective**: Understand the dataset through basic analysis and visual exploration.
- **Tasks**:
  - Generate summary statistics for key variables (mean, median, standard deviation).
  - Create visualizations (histograms, bar charts, scatter plots) to observe the distribution of variables and relationships.
  - Identify key patterns and correlations between features that may influence success in online education.

---

#### **Phase 3: Hypothesis Formulation and Statistical Analysis**
- **Objective**: Establish hypotheses and perform statistical tests to explore relationships between variables.
- **Tasks**:
  - Formulate hypotheses regarding factors such as socioeconomic access, demographics, and motivation in predicting online education success.
  - Run appropriate statistical tests (e.g., t-tests, ANOVA, correlations) to examine these hypotheses and determine the relationships between key features.

---

#### **Phase 4: Model Development and Feature Selection**
- **Objective**: Develop and refine a predictive model to identify key factors of online education success.
- **Tasks**:
  - Perform feature selection to identify the most important predictors (using techniques like correlation analysis or decision trees).
  - Build an initial predictive model (logistic regression or decision tree) to predict adaptability and online education success.
  - Train the model using cross-validation to improve generalizability and prevent overfitting.
  
---

#### **Phase 5: Model Evaluation and Visualization**
- **Objective**: Evaluate model performance and communicate results effectively through visualizations.
- **Tasks**:
  - Evaluate model performance using key metrics such as accuracy, precision, recall, and AUC.
  - Visualize key results, including feature importance and model performance metrics, using libraries like ggplot2 or plotly.
  - Interpret the findings and visualize key predictors of online education success.

---

#### **Phase 6: Final Documentation and Reporting**
- **Objective**: Compile the analysis and findings into a well-structured report.
- **Tasks**:
  - Document the entire process, from data cleaning to model evaluation, in the README.
  - Write up the results, conclusions, and actionable insights, focusing on how scholarship providers can use these findings to improve their selection and support processes.
  - Review and finalize the report to ensure clarity, coherence, and accuracy.







