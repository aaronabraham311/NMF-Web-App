
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Alzheimer's Disease Proteomics Model"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("Eotaxin",
                  "Eotaxin concentrations (pg/ml):",
                  min = 0,
                  max = 2.6,
                  value = 1.9),
      sliderInput("BNS",
                  "Brain natriuretic peptide (pg/ml)",
                  min = 0,
                  max = 4.5,
                  value = 3),
      sliderInput("PPP",
                  "Pancreatic polypeptide concetration (pg/ml):",
                  min = 0,
                  max = 3.3,
                  value = 2.1),
      sliderInput("Heparin",
                  "Heparin binding EGF-like growth factor concentrations (pg/ml):",
                  min = 0,
                  max = 2.7,
                  value = 1.9),
      
    ),
    
    # Show percentages/classes for each model
    mainPanel(
      p("This app will display the percentage chance of a patient developing AD based on the protein concentrations"),
      h2("Results"),
      verbatimTextOutput("results")
    )
  )
))
))
