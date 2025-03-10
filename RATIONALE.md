# InsightED

## Engineered Variables and Initial Data Exploration

- Libraries: We load dplyr for data manipulation and ggplot2 for visualization.
- Data Loading: We read your CSV file into a data frame.
- Digital Literacy: We create a binary variable based on the combination of device and it_student.
- Socio-Economic Status: We use case_when() to create a categorical variable based on financial_condition and education_level.
- Access Score: We assign numerical values to the levels of location, load_shedding, internet_type, and network_type and sum them to create an access score.
- High Adaptivity: We create a binary variable to represent "online learning success" for logistic regression.
- Initial Exploration: We use table() and ggplot2 to check the distributions of the new variables.

## Statistical analysis and Running the Logistic Regression Model


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