# Load libraries
library(shiny)
library(shinydashboard)
library(shinythemes)
library(bslib)
library(thematic)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(plotly)
library(DT)
library(corrplot)
library(randomForest)

# Load the dataset
df <- read.csv("data/cleaned_data.csv")

# Apply thematic for consistent styling
thematic::thematic_on(font = "Space Mono", bg = "white", accent = "#5E81AC")




