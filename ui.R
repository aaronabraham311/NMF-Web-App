
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
      sliderInput("ApoD",
                  "Apolipoprotein concentrations (ug/ml):",
                  min = 0,
                  max = 2.7,
                  value = 1.7),
      sliderInput("Vitronectin",
                  "Vitronectin concentrations (ug/ml):",
                  min = 0,
                  max = 3.2,
                  value = 2.9),
      sliderInput("VEGF",
                  "Vascular endothelial growth factor concentrations (pg/ml):",
                  min = 0,
                  max = 3.7,
                  value = 2.8),
      sliderInput("Fibrinogen",
                  "Fibrinogen concentrations (mg/ml):",
                  min = 0,
                  max = 14,
                  value = 6.1),
      sliderInput("CysC",
                  "Cystatin C concentrations (ng/ml):",
                  min = 0,
                  max = 3.6,
                  value = 3.1),
      sliderInput("VCAM",
                  "Vascular cell adhesion molecule 1 concentrations (ng/ml):",
                  min = 0,
                  max = 3.3,
                  value = 2.9),
      sliderInput("Thromb",
                  "Thrombopoietin concentrations (ng/ml):",
                  min = 0,
                  max = 7.8,
                  value = 2.2)
      
      
    ),
    
    # Show percentages/classes for each model
    mainPanel(
      p("This app will display the percentage chance of a patient developing AD based on the protein concentrations. X1 represents 
        the probability of a healthy diagnosis, X2 is the probability of an MCI diagnosis, and X3 is the probability of an AD diagnosis"),
      h2("Results"),
      verbatimTextOutput("results")
    )
  )
))