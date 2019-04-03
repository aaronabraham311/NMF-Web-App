
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

# Including relevant libraries
library(caret)
library(shiny)

shinyServer(function(input, output) {
  
  
  # Reading models
  model <- readRDS("specificxgbLinear.RDS")
  
  # Getting input of algorithms
  output$results <- renderPrint ({
    df = data.frame(
      "Eotaxin.1..pg.mL." = input$Eotaxin,
      "Brain.Natriuretic.Peptide...BNP...pg.ml." = input$BNS,
      "Pancreatic.Polypeptide..PPP...pg.ml." = input$PPP,
      "Heparin.Binding.EGF.Like.Growth.Factor....pg.mL." = input$Heparin,
      "Apolipoprotein.D..Apo.D...ug.ml." = input$ApoD,
      "Vitronectin..ug.ml." = input$Vitronectin,
      "Vascular.Endothelial.Growth.Factor..VEGF..pg.mL." = input$VEGF,
      "Fibrinogen..mg.mL." = input$Fibrinogen,
      "Cystatin.C..ng.ml." = input$CysC,
      "Vascular.Cell.Adhesion.Molecule.1..VCAM...ng.mL." = input$VCAM,
      "Thrombopoietin..ng.mL." = input$Thromb) # Data frame of metabolite values
    
    pred <- predict(model, df, type = "prob")
    print(pred)
    
  }) 
})
