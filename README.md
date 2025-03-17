# InsightEd

## **Homework #5: Mini Task #3** 

Refer to this link for [Homework #5: Mini Task #3: Statistical Analysis & Visualization](https://github.com/imperionite/insighted/blob/main/STAT.ipynb)

InsightEd is a JupyterLab Notebook project entirely written in R, serving as a repository for statistical analysis and data visualization tasks related to Milestone 2 and the Terminal Assessment.

The assignments included in this project are:

- [MS 2 Submission](https://github.com/imperionite/insighted/blob/main/MS2_MealAllowance.ipynb)
    - [Summary & Documentation](https://github.com/imperionite/insighted/blob/main/MS2_Rationale.md)
    - [Data Cleaning: Food Prices Dataset](https://github.com/imperionite/insighted/blob/main/DataCleaning_FoodPrices.ipynb)
    - [Data Cleaning: Employees Dataset](https://github.com/imperionite/insighted/blob/main/DataCleaning_Employees.ipynb)
- [Homework #5: Mini Task #3](https://github.com/imperionite/insighted)
    - [Statistical Analysis & Data Visualization](https://github.com/imperionite/insighted/blob/main/STAT.ipynb)
    - [Data Cleaning: Mini Task #3 Dataset](https://github.com/imperionite/insighted/blob/main/DataCleaning.ipynb)

---

## Focus Question

*Who would most likely be successful in an online community that is worth giving a full scholarship coverage for the entire stay in basic education and/or higher education?*

### Plan of Action

To conduct an empirical investigation to the provided dataset and to focus on the variables that give insights into the proper selection of scholarship recipients.


### Empirical Investigation: Identifying Key Factors for Scholarship Selection


### Introduction

The increasing adoption of online education has opened new opportunities for learners worldwide. However, the success of students in online learning environments depends on a variety of factors, including access to resources, adaptability, and motivation. For scholarship-granting organizations, identifying students who are most likely to thrive in these settings is crucial, especially when opportunities are limited. This study seeks to explore the characteristics associated with student success in online education, using a data-driven approach to determine which factors predict positive learning outcomes. This study focuses on an online community for students in basic and higher education.

### Objectives

The primary objectives of this study are:

- To identify key predictors of online learning success.

- To perform feature engineering on relevant variables to enhance their predictive power.

- To conduct exploratory data analysis (EDA) to understand variable distributions and relationships.

- To test specific hypotheses related to student performance and demographic factors.

- To implement a simplified logistic regression model for predicting online learning success.

### Scope and Delimitation

This study focuses on a dataset of 1205 observations (students), including demographic, educational, and technological factors. Key variables include education level, financial condition, internet type, and adaptivity level. The analysis will prioritize the most influential features and their impact on student success in online education. This is a cross-sectional study.

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

- Since `adaptivity_level` is categorical, the project considered using multinomial logistic regression. However, for simplicity and time constraint, adaptivity level is converted into a `binary variable, High vs Not High, and then use binomial logistic regression. This will allow to model the probability of high adaptivity based on the other variables.
  
- A binary variable, `high_adaptivity`, will be created where "High" and "Moderate" adaptivity are 1 and "Low" adaptivity is 0. This variable represents "online learning success" as defined in this study.

- The `glm()` function in R will be used with the `binomial` family to model the probability of high adaptivity based on the engineered variables: digital literacy, socio-economic status, and access score.

- The coefficients, odds ratios (using `exp(coef(model))`), and p-values will be interpreted to understand the impact and significance of each variable. The resulting coefficients was used to indicate the strength and direction of the relationships.


### Materials and Methods

#### Data Collection

The study utilizes a cleaned dataset containing 1205 observations and 15 variables, including demographic, educational, and technological attributes.

#### Data Analysis

-   **Feature Engineering:**
    -   **Digital Literacy (categorical):** Created from the combination of "device" and "it\_student," with categories such as "High Digital Literacy" (computer and IT student) and "Low Digital Literacy" (mobile and not IT student).
    -   **Socio-Economic Status (categorical):** Created by combining "financial\_condition" and "education\_level" to create categories such as "High socioeconomic status" (Rich and College), "Medium socioeconomic status" (Mid and School), and "Low socioeconomic status" (Poor and School).
    -   **Access Score (numerical):** Calculated by assigning numerical values to each level of the variables "location," "load\_shedding," "internet\_type," and "network\_type," and then summing the scores.
-   **Statistical Analysis:** Descriptive statistics, hypothesis testing (chi-square tests), correlation analysis, and group comparisons will be conducted. **Logistic regression will be used to model the relationship between engineered variables and high adaptivity.**
-   **Data Visualization:** Bar plots, boxplots, scatterplots, and heatmaps will be used to illustrate key findings.

#### Tools

R programming in Jupyter Lab will be used for data analysis and visualization, ensuring reproducibility and clarity of results.

### Essential Variables Focus

The dataset consists of 1205 observations and 15 variables, including demographic, technological, and behavioral factors. Key variables include:

Gender: Boy, Girl

Education Level: College, School, University

Institution Type: Government, Non-Government

Financial Condition: Mid, Poor, Rich

Internet Type: Mobile Data, Wifi

Network Type: 2G, 3G, 4G

Class Duration: 0, 1-3, 3-6 hours

Device Used: Computer, Mobile, Tablet

Adaptivity Level: High, Low, Moderate

Age: Numeric variable representing student age

### Engineered Variables
-   **Success (binary):** Based on adaptivity level (High vs. Not High). This variable represents "online learning success" for our logistic regression model.
-   **Digital Literacy (categorical):** Engineered from device and IT student. o capture a student's level of digital literacy based on device usage and IT student status.
-   **Socio-Economic Status (categorical):** Engineered from financial condition and education level. To categorize students based on their financial condition and education level.
-   **Access Score (numerical):** Engineered from location, load shedding, internet type, and network type. To quantify a student's access to essential resources for online learning.

## Statistical analysis and Running the Logistic Regression Model

Fisher's Exact Test (and Chi-square tests) are specifically designed for analyzing associations between categorical variables.
`access_score`is a numericl variable. Therefore, Fisher's Exact Test is not appropriate for testing its association with `high_adaptivity`.

**How We Tested the Association for Access Score**

**Logistic Regression:**

- Logistic regression to test the association between access_score and high_adaptivity.
- Logistic regression can handle both categorical and numerical predictors.
- The p-value associated with the access_score coefficient in the logistic regression output tells us whether there is a statistically significant association.

**Interpretation:**

As noted, the p-value for access_score in the logistic regression summary was very small (1.78e-09), indicating a highly significant association.


### Digital Literacy and High Adaptivity

A Fisher’s Exact Test was conducted to examine the relationship between digital literacy and high adaptivity. The results indicated a statistically significant association between these two variables, with a p-value of 0.001472, suggesting that the null hypothesis (which posits no association between digital literacy and high adaptivity) can be rejected. The odds ratio was estimated to be 0.507, with a 95% confidence interval ranging from 0.319 to 0.787. This suggests that individuals with high digital literacy have lower odds of demonstrating high adaptivity compared to those with lower digital literacy, as the odds ratio is less than 1. However, the relationship is relatively weak, as indicated by the confidence interval not being far from 1.


In real-world terms, this result may reflect a scenario where individuals with high digital literacy skills may be more accustomed to structured, predictable environments or systems that require specific technical expertise, possibly making them less flexible or adaptable to rapidly changing or novel situations. Conversely, individuals with lower digital literacy may possess more general problem-solving skills, enabling them to adapt more quickly in unpredictable settings. This finding suggests the need for further exploration into how digital literacy influences adaptability across different contexts, such as the workplace or educational settings.


### Socio-Economic Status and High Adaptivity


A Fisher’s Exact Test was also performed to explore the relationship between socio-economic status and high adaptivity. The results revealed a highly significant p-value of 6.362e-07, providing strong evidence against the null hypothesis of no association between socio-economic status and high adaptivity. The exact odds ratio was not provided in the output, but the very low p-value suggests a very robust relationship between the two variables. This indicates that socio-economic status plays a significant role in predicting an individual’s ability to adapt.


In real-world contexts, individuals from higher socio-economic backgrounds may have greater access to resources, education, and networks that foster adaptability, such as exposure to diverse environments, opportunities for continuous learning, or mentorship. On the other hand, individuals from lower socio-economic backgrounds may face more limitations in resources, which could impact their ability to develop or demonstrate adaptive behaviors, particularly in fast-evolving scenarios. These findings underscore the importance of considering socio-economic factors when designing policies or interventions aimed at enhancing adaptability in individuals, particularly in contexts like education, career development, and social mobility.


#### Generalization

In conclusion, both digital literacy and socio-economic status are significantly associated with high adaptivity, with socio-economic status demonstrating a particularly strong association. The real-world implications of these findings suggest that interventions aimed at enhancing adaptability should consider the broader socio-economic context, while also addressing the potential complexities in how digital literacy influences adaptive behaviors in various environments.


### Logistic Regression Analysis of Predictors of High Adaptivity

A logistic regression model was conducted to examine the relationship between **digital literacy**, **socio-economic status**, and **access score** in predicting the likelihood of being classified as having **high adaptivity**. The model included three predictors: **digital literacy**, **socio-economic status**, and **access score**. The dependent variable, **high adaptivity**, was binary, where 1 represented "high adaptivity" and 0 represented all other levels.

#### Model Summary:

- **Intercept**: The intercept of the model was -14.5679, with a standard error of 378.5931. This coefficient was not statistically significant (p = 0.96931), suggesting that the baseline log-odds of being in the "high adaptivity" group for individuals with high digital literacy and high socio-economic status is not significantly different from zero.

#### Predictors and Interpretation:

1. **Digital Literacy (Low vs. High)**:
   - The coefficient for **digital literacy (Low)** was -0.6374, with a standard error of 0.2293. The associated z-value was -2.779, and the p-value was 0.00545, which indicates statistical significance at the 0.01 level.
   - The **odds ratio** for digital literacy (Low) was **0.528**, suggesting that individuals with low digital literacy have approximately **52.8% of the odds** of being classified as highly adaptable compared to individuals with high digital literacy. This finding implies that digital literacy is an important predictor of high adaptivity, with those lacking digital skills being less likely to exhibit high adaptability.

2. **Socio-economic Status**:
   - The coefficients for **socio-economic status (Low, Medium, and Other)** all had large standard errors (ranging from 378.59 to 378.59), leading to non-significant p-values (p = 0.9713 for Low, p = 0.9694 for Medium, and p = 0.9707 for Other). These findings suggest that socio-economic status, as measured in this dataset, does not significantly affect the likelihood of being classified as highly adaptable, after accounting for digital literacy and access score.
   - Although the point estimates for these coefficients are large (13.62 for Low, 14.53 for Medium, and 13.93 for Other), the extremely large standard errors suggest that the data lacks sufficient power or variability to establish a meaningful relationship between socio-economic status and high adaptivity.

3. **Access Score**:
   - The coefficient for **access score** was 0.3278, with a standard error of 0.0545. The z-value was 6.017, and the p-value was **1.78e-09**, indicating that access score is a **highly significant predictor** of high adaptivity.
   - The **odds ratio** for access score was **1.388**, meaning that for each one-point increase in the access score, the odds of being in the high adaptivity group increase by approximately **38.8%**. This suggests that greater access to resources or opportunities is strongly associated with higher adaptability, supporting the notion that those with more resources are better equipped to navigate and adapt to changing circumstances.

##### Model Fit:

- The **null deviance** of the model was 1620.3, and the **residual deviance** was 1537.9. The reduction in deviance indicates that the model provides a better fit to the data than the null model, which only includes the intercept.
- The **AIC** (Akaike Information Criterion) for the model was 1549.9, indicating the model's relative quality in explaining the data while penalizing for the number of parameters.

#### Summary of Findings:

The logistic regression model reveals significant associations between **digital literacy** and **access score** with the likelihood of being in the "high adaptivity" group. Specifically:
- **Low digital literacy** was associated with **lower odds** of being highly adaptable compared to those with high digital literacy, indicating that digital literacy plays a significant role in adaptability.
- **Access score** was found to be a **strong positive predictor** of high adaptivity, with each unit increase in access score leading to a **38.8% increase** in the odds of being highly adaptable.

However, **socio-economic status** (Low, Medium, or Other) did not appear to have a significant effect on adaptivity after controlling for digital literacy and access score. Despite large point estimates for socio-economic status, the large standard errors and non-significant p-values suggest that socio-economic status is not a meaningful predictor of high adaptivity in this dataset.

#### Implications:

- **Digital literacy** is an important factor in determining an individual's adaptability, suggesting that interventions aimed at improving digital literacy may contribute to enhancing adaptability, particularly in the context of modern technological changes.
- **Access to resources** (as reflected by the access score) also plays a crucial role in facilitating adaptability. Programs that improve access to educational and financial resources may help individuals become more adaptable to change.
- The **lack of significant findings for socio-economic status** suggests that other factors, such as digital literacy and access to resources, may be more influential in predicting adaptability than socio-economic background in this sample. This finding challenges the assumption that socio-economic status is always a key predictor of adaptability.

#### Generalization

In conclusion, this study highlights the importance of **digital literacy** and **access to resources** in promoting adaptability. While socio-economic status did not significantly impact adaptivity in this analysis, the findings suggest that enhancing digital skills and access to opportunities could be pivotal in fostering adaptability across various contexts.


### Evaluating the Model Performance

**Confusion Matrix**

The confusion matrix for the model’s predictions of high adaptivity is presented below:

| Actual/Predicted | 0   | 1   |
|------------------|-----|-----|
| **0**            | 123 | 357 |
| **1**            | 87  | 638 |

This matrix provides insight into the model's performance by showing how many instances of each class (high adaptivity = 1, low adaptivity = 0) were correctly or incorrectly classified. Specifically:
- **True Negatives (TN)**: The model correctly predicted 123 instances of low adaptivity (0).
- **False Positives (FP)**: The model incorrectly predicted 357 instances as high adaptivity (1) when they were actually low adaptivity (0).
- **False Negatives (FN)**: The model incorrectly predicted 87 instances as low adaptivity (0) when they were actually high adaptivity (1).
- **True Positives (TP)**: The model correctly predicted 638 instances of high adaptivity (1).

The model shows a relatively higher number of false positives (357) and true positives (638), indicating a bias towards predicting high adaptivity more often than low adaptivity. This is common in imbalanced datasets, where one class is more frequent than the other. The imbalance in predicted classes could affect the model's overall performance, and this may require adjustment through techniques such as re-sampling or class-weighting.

### 

**ROC Curve and AUC**

The ROC (Receiver Operating Characteristic) curve and the associated AUC (Area Under the Curve) provide a measure of the model's discriminatory ability, specifically how well it distinguishes between high and low adaptivity.

The AUC value obtained was **0.6549**, indicating that the model has moderate ability to discriminate between the two classes. An AUC of 0.5 would suggest no discriminative ability (random guessing), while an AUC of 1 would represent perfect discrimination. Therefore, an AUC of 0.6549 suggests that the model performs better than random guessing, but there is room for improvement in its ability to distinguish between the two classes.

Given that the AUC is between 0.5 and 0.7, the model demonstrates some useful predictive capability, but there may be better-performing models or additional tuning required to achieve higher discrimination. 

**Conclusion**

The model demonstrates moderate predictive ability with a reasonable ability to distinguish between high and low adaptivity, as indicated by the confusion matrix and AUC value. However, with an AUC of 0.6549, the model's performance could likely be improved by adjusting parameters, addressing class imbalances, or exploring more complex algorithms. Further refinements may lead to better classification accuracy and more reliable predictions of high adaptivity.

