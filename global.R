# install.packages(c(
#     "shiny", "DT", "dplyr", "shinythemes", "shinyWidgets", "magick", "readr",
#     "RColorBrewer", "markdown"
# ))

# Load libraries
library(DT)
library(dplyr)
library(shiny)
library(shinydashboard)
library(shinythemes)
library(shinyWidgets)
library(magick)
library(markdown)

# Load custom functions
source(file.path("code", "functions.R"))

# Load custom UI elements
source(file.path("code", "uiElements.R"))

# Load data
keyboards <- loadKeyboards()
keyboardsDT <- loadKeyboardsDT(keyboards)
images <- loadImages()
palette <- loadColorPalette()
