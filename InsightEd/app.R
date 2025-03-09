library(shiny)

source("global.R")  # Loads libraries and data
source("home.R")    # Should contain home_ui() and home_server()
source("kpi.R")     # Should contain kpi_ui() and kpi_server()

# Apply thematic for consistent styling
thematic::thematic_shiny()

# UI
ui <- navbarPage(
  theme = bslib::bs_theme(bootswatch = "flatly", base_font = bslib::font_google("Space Mono")),
  title = "Online Education Success Dashboard",
  
  tabPanel("Home", home_ui),  # Add "home" as the module ID
  tabPanel("KPI", kpi_ui)      # Add "kpi" as the module ID
)

# Server
server <- function(input, output, session) {
  home_server(input, output, session, df)  # Pass the module ID
  kpi_server(input, output, session, df)    # Pass the module ID
}

shinyApp(ui, server)
