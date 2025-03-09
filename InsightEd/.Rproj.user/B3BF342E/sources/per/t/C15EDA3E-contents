library(shiny)
library(ggplot2)
library(plotly)
library(DT)

# UI for Home Page
home_ui <- fluidPage(
  titlePanel("Exploratory Data Analysis (EDA) Overview"),
  
  # Row 1: Univariate Analysis
  fluidRow(
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Adaptivity Level Distribution"),
          plotlyOutput("adaptivity_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Age Distribution"),
          plotlyOutput("age_distribution_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Financial Condition Distribution"),
          plotlyOutput("financial_condition_plot", height = "200px")
        )
      )
    )
  ),
  
  # Row 2: More Univariate Analysis
  fluidRow(
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Institution Type Distribution"),
          plotlyOutput("institution_type_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Feature Importance"),
          plotlyOutput("feature_importance_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Correlation Matrix"),
          plotlyOutput("correlation_plot", height = "200px")
        )
      )
    )
  ),
  
  # Row 3: Bivariate Analysis
  fluidRow(
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Adaptivity by Education Level"),
          plotlyOutput("education_adaptivity_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Age vs Adaptivity Level"),
          plotlyOutput("age_vs_adaptivity_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Internet Type vs Adaptivity Level"),
          plotlyOutput("internet_adaptivity_plot", height = "200px")
        )
      )
    )
  ),

  # Row 4: Multivariate Analysis
  fluidRow(
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Financial Condition vs Adaptivity Level"),
          plotlyOutput("financial_adaptivity_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Education Level + Institution Type vs Adaptivity"),
          plotlyOutput("education_institution_plot", height = "200px")
        )
      )
    ),
    column(4,
      div(class = "card m-2 p-2",
        div(class = "card-body",
          h5("Class Duration, Age, and Adaptivity"),
          plotlyOutput("class_duration_plot", height = "200px")
        )
      )
    )
  )
)

# Server for Home Page
home_server <- function(input, output, session, data) {

  # 1. Univariate Analysis
  output$adaptivity_plot <- renderPlotly({
    plot_ly(data, x = ~adaptivity_level, type = "histogram", marker = list(color = "skyblue"))
  })

  output$age_distribution_plot <- renderPlotly({
    plot_ly(data, x = ~age_numeric, type = "histogram", marker = list(color = "lightgreen"))
  })

  output$financial_condition_plot <- renderPlotly({
    plot_ly(data, x = ~financial_condition, type = "histogram", marker = list(color = "orange"))
  })

  output$institution_type_plot <- renderPlotly({
    plot_ly(data, x = ~institution_type, type = "histogram", marker = list(color = "purple"))
  })

  # 2. Feature Importance and Correlation Analysis
  output$feature_importance_plot <- renderPlotly({
    importance_data <- as.data.frame(randomForest(adaptivity_level ~ ., data = data, importance = TRUE)$importance)
    plot_ly(importance_data, x = rownames(importance_data), y = importance_data$MeanDecreaseGini, type = "bar", marker = list(color = "#5E81AC"))
  })

  output$correlation_plot <- renderPlotly({
    numeric_vars <- data %>% select(age_numeric, V1)
    cor_matrix <- cor(numeric_vars)
    plot_ly(z = cor_matrix, type = "heatmap", colorscale = "Blues")
  })

  # 3. Bivariate Analysis
  output$education_adaptivity_plot <- renderPlotly({
    ggplot(data, aes(x = education_level, fill = adaptivity_level)) +
      geom_bar(position = "fill") +
      theme_minimal()
  })

  output$age_vs_adaptivity_plot <- renderPlotly({
    plot_ly(data, y = ~age_numeric, x = ~adaptivity_level, type = "box", marker = list(color = "lightgreen"))
  })

  output$internet_adaptivity_plot <- renderPlotly({
    ggplot(data, aes(x = internet_type, fill = adaptivity_level)) +
      geom_bar(position = "fill") +
      theme_minimal()
  })

  output$financial_adaptivity_plot <- renderPlotly({
    ggplot(data, aes(x = financial_condition, fill = adaptivity_level)) +
      geom_bar(position = "fill") +
      theme_minimal()
  })

  # 4. Multivariate Analysis
  output$education_institution_plot <- renderPlotly({
    ggplot(data, aes(x = education_level, fill = adaptivity_level)) +
      geom_bar(position = "fill") +
      facet_wrap(~institution_type) +
      theme_minimal()
  })

  output$class_duration_plot <- renderPlotly({
    plot_ly(data, x = ~class_duration, y = ~age_numeric, color = ~adaptivity_level, type = "scatter", mode = "markers", marker = list(opacity = 0.5))
  })
}
