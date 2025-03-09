library(shiny)
library(ggplot2)
library(plotly)

kpi_ui <- dashboardPage(
  dashboardHeader(title = "Key Performance Indicators"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("KPI Dashboard", tabName = "kpi", icon = icon("chart-line"))
    )
  ),
  dashboardBody(
    fluidRow(
      box(
        title = "Filters", status = "primary", solidHeader = TRUE, collapsible = TRUE,
        selectInput("education_filter", "Education Level:", choices = c("All", unique(df$education_level))),
        selectInput("institution_filter", "Institution Type:", choices = c("All", unique(df$institution_type))),
        sliderInput("age_filter", "Age Range:", min(df$age_numeric), max(df$age_numeric), value = range(df$age_numeric))
      )
    ),
    fluidRow(
      valueBoxOutput("avg_adaptivity"),
      valueBoxOutput("total_students"),
      valueBoxOutput("success_rate")
    ),
    fluidRow(
      box(plotlyOutput("top_predictors"), width = 6),
      box(plotlyOutput("success_rate_plot"), width = 6)
    )
  )
)

# Server for KPI Page
kpi_server <- function(input, output, session, data) {
  filtered_data <- reactive({
    data_filtered <- data
    if (input$education_filter != "All") {
      data_filtered <- data_filtered[data_filtered$education_level == input$education_filter, ]
    }
    if (input$institution_filter != "All") {
      data_filtered <- data_filtered[data_filtered$institution_type == input$institution_filter, ]
    }
    data_filtered[data_filtered$age_numeric >= input$age_filter[1] & data_filtered$age_numeric <= input$age_filter[2], ]
  })

  # Average Adaptivity
  output$avg_adaptivity <- renderValueBox({
    avg_adapt <- mean(as.numeric(filtered_data()$adaptivity_level), na.rm = TRUE)
    valueBox(round(avg_adapt, 2), "Average Adaptivity", icon = icon("chart-bar"), color = "blue")
  })

  # Total Students
  output$total_students <- renderValueBox({
    total <- nrow(filtered_data())
    valueBox(total, "Total Students", icon = icon("users"), color = "green")
  })

  # Success Rate (Adaptivity Level >= 3)
  output$success_rate <- renderValueBox({
    success_rate <- mean(as.numeric(filtered_data()$adaptivity_level) >= 3, na.rm = TRUE)
    valueBox(paste0(round(success_rate * 100, 2), "%"), "Success Rate", icon = icon("check-circle"), color = "purple")
  })

  # Top Predictors
  output$top_predictors <- renderPlotly({
    feature_importance <- data.frame(
      feature = c("Education Level", "Financial Condition", "Internet Type"),
      importance = c(0.45, 0.35, 0.20)
    )
    plot_ly(feature_importance, x = ~feature, y = ~importance, type = "bar", marker = list(color = "darkblue")) %>%
      layout(title = "Top Predictors of High Adaptivity")
  })

  # Success Rate by Institution Type
  output$success_rate_plot <- renderPlotly({
    success_rate <- filtered_data() %>%
      group_by(institution_type) %>%
      summarize(success_rate = mean(as.numeric(adaptivity_level) >= 3))

    plot_ly(success_rate, x = ~institution_type, y = ~success_rate, type = "bar", marker = list(color = "green")) %>%
      layout(title = "Success Rate by Institution Type", yaxis = list(title = "Success Rate"))
  })
}
