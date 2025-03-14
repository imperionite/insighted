# **Meal Allowance Optimization: Price, Inflation and Prediction**

## **Abstract**

_This project aims to develop data-driven recommendations for optimizing MotorPH's employee meal allowance. Utilizing datasets from the MO-IT100 course and [MotorPH's data repository](https://sites.google.com/mmdc.mcl.edu.ph/motorph/data-repository), the study evaluates three distinct models: (1) a base meal price model derived from historical food price data, (2) an inflation-adjusted allowance using the [Consumer Price Index (CPI)](https://psa.gov.ph/price-indices/cpi-ir?utm_source=chatgpt.com), and (3) a predictive model forecasting future meal costs. Using R and Jupyter Lab for data analysis and visualization, the project highlights the practical application of these tools in statistical modeling and decision support. [Key findings reveal a consistent increase in base meal prices, the impact of inflation on allowance adequacy](https://lattice.com/articles/how-inflation-affects-employee-compensation), and the upward trend of meal costs as forecasted by the predictive model. [The study provides actionable insights to help MotorPH make informed decisions about their employee meal allowance, ensuring it remains relevant and sustainable](https://edenredbenefits.com/is-a-meal-allowance-right-for-your-company/)._

## **Introduction**

[Employee meal allowances are essential elements of compensation packages](https://www.hubengage.com/employee-experience/significance-and-impact-of-employee-allowances/), directly influencing employee satisfaction and well-being. However, [fluctuating food prices and inflation can challenge the maintenance of their real value](https://www.shrm.org/topics-tools/flagships/all-things-work/the-wage-inflation-challenge----balancing-business-sustainabilit). This project [addresses the need for a data-driven approach to optimize MotorPH's employee meal allowance, ensuring its continued adequacy and relevance](https://business.doordash.com/en-us/resources/research-shows-meal-benefits-improve-employee-satisfaction). By leveraging [historical food price data and economic indicators, the study provides actionable insights and recommendations](https://psa.gov.ph/price-indices/cpi-ir?utm_source=chatgpt.com). The project employs R and Jupyter Lab as powerful tools for data analysis, visualization, and statistical modeling, demonstrating their practical utility in solving real-world business challenges.

## **Objectives**

The primary objectives of this project are as follows:

- To develop a base meal price model using historical food price data from MotorPH's data repository.
- To implement an inflation-adjusted meal allowance model using the Consumer Price Index (CPI) and a proxy Cost of Living Adjustment (COLA).
- To create a predictive model to forecast future meal costs, enabling proactive budgeting.
- To provide data-driven recommendations for optimizing MotorPH's employee meal allowance.
- To demonstrate the use of R and Jupyter Lab for statistical analysis and decision support.

## **Scope and Delimitation**

This project focuses on analyzing historical food price data and economic indicators to optimize MotorPH's employee meal allowance. The scope of the study includes:

- Analyzing food price datasets provided by the MO-IT100 course and MotorPH's data repository.
- Utilizing CPI data from the Philippine Statistics Authority (PSA).
- Developing predictive models using linear regression.

The delimitations of the study are as follows:

- The analysis is limited to the available datasets and economic indicators.
- The predictive models are based on simple linear regression, and more advanced models could potentially offer greater accuracy.
- The study assumes a specific meal composition for the base meal price model.
- The proxy COLA implementation assumes 80% of CPI with a 5% cap.

## **Significance of the Study**

This study is significant for the following reasons:

- It provides MotorPH with data-driven recommendations to optimize their employee meal allowance.
- It demonstrates the application of data analysis and statistical modeling to address real-world business problems.
- It highlights the utility of R and Jupyter Lab as tools for decision support.
- [It contributes to understanding the impact of food prices and inflation on employee compensation](https://www.shrm.org/topics-tools/flagships/all-things-work/the-wage-inflation-challenge----balancing-business-sustainabilit).
- It offers a template that other companies can adapt to evaluate their employee meal allowance.

## **Methods**

The project methodology consists of the following steps:

1. **Data Acquisition and Cleaning:**
    - Obtain food price datasets from the MO-IT100 course and MotorPH's data repository.
    - Obtain CPI data from the Philippine Statistics Authority (PSA).
    - Clean and preprocess the data using R and Jupyter Lab.

2. **Base Meal Price Model Development (Option 1):**
    - Define a specific meal composition (protein, carbohydrates, vegetables, fruits, oils).
    - Calculate the unit prices of food items.
    - Categorize food items into relevant food groups.
    - Calculate the average price per food group per year.
    - Develop a base meal price model by multiplying the average prices by the meal composition weights.
    - Apply scaling factors to account for restaurant markups and overhead costs.

3. **Inflation-Adjusted Meal Allowance (Option 2):**
    - Calculate annual inflation rates using CPI data.
    - Implement an inflation-adjusted meal allowance model.
    - Apply a proxy COLA based on 80% of the CPI with a 5% cap.
    - Compare the results of both methods.

4. **Predictive Model (Option 3):**
    - Develop a linear regression model to forecast future base meal prices.
    - Evaluate the model's performance using R-squared and statistical significance tests.
    - Visualize the historical and forecasted meal prices.

5. **Data Visualization and Interpretation:**
    - Create visualizations using R and Jupyter Lab to present the results.
    - Interpret the findings and provide actionable recommendations.

## **Findings and Interpretation**

- **Base Meal Price Model (Option 1):**
    - The analysis of historical food price data from 2019 to 2022 revealed a consistent upward trend in the calculated base meal price.
    - The base meal price for 2019 was calculated to be X PHP, increasing to Y PHP in 2020, Z PHP in 2021, and reaching 78.09 PHP in 2022.
    - A scaling factor of 3.8 was applied to account for restaurant markups and overhead costs, resulting in a recommended daily meal allowance of 300 PHP.
    - The raw base meal price was calculated using the following weights: protein_weight = 175 grams, carb_weight = 250 grams, veg_weight = 100 grams, fruit_weight = 150 grams, oils_and_condiments_weight = 10 grams.

- **Inflation-Adjusted Meal Allowance (Option 2):**
    - [Using CPI data from the Philippine Statistics Authority (PSA)](https://psa.gov.ph/price-indices/seasonally-adjusted-cpi), the following inflation rates were calculated:
        - 2019: 4.42%
        - 2020: 2.96%
        - 2021: 3.73%
        - 2022: 4.98%
    - Applying these rates to a base allowance of 300 PHP resulted in the following adjusted allowances:
        - 2019: 313.27 PHP
        - 2020: 308.87 PHP
        - 2021: 311.20 PHP
        - 2022: 314.94 PHP
    - Implementing a proxy COLA (80% of CPI with a 5% cap) resulted in the following adjusted allowances:
        - 2019: 310.62 PHP
        - 2020: 307.09 PHP
        - 2021: 308.96 PHP
        - 2022: 311.96 PHP
    - The differences between the CPI-adjusted and COLA-adjusted values were highlighted, emphasizing the more conservative approach of the COLA implementation.

- **Predictive Model (Option 3):**
    - A linear regression model (Base_Meal_Price ~ Year) was used to forecast future base meal prices.
    - The model's summary showed:
        - R-squared: 0.8607
        - Adjusted R-squared: 0.791
        - Coefficient for Year: 6.487
        - P-value for Year: 0.0723
    - The model predicted an average annual increase of 6.487 PHP in the base meal price.
    - Forecasted base meal prices for 2023 and 2024 were projected to be X PHP and Y PHP, respectively.
    - The model was a reasonable representation of the data's trend, despite limitations indicated by the p-value exceeding 0.05.
    - The residual standard error was 4.127 on 2 degrees of freedom.
    - The F-statistic was 12.36 on 1 and 2 DF, p-value: 0.07227.

## **Conclusion**

This project successfully developed data-driven recommendations for optimizing MotorPH's employee meal allowance. The three models presented offer MotorPH a comprehensive understanding of meal cost trends, the impact of inflation, and future meal cost forecasts. The findings suggest that MotorPH should consider adopting an inflation-adjusted allowance model while utilizing the predictive model for proactive budgeting. Further research could explore more advanced predictive models and regional variations in meal costs.
