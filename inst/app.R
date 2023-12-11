# Purpose: Code for Shiny App for PROstat5
# Author: Hyunwoo Kwon
# Date: 2023/12/08
# Version: 0.1.0

library(shiny)
library(DT)
library(PROstat5)

# Define UI
ui <- fluidPage(
  titlePanel("PROstat5 Visualization Tool"),
  
  sidebarLayout(
    sidebarPanel(
      p("PROstat5 is an R package designed for bioinformatics researchers,
        molecular biologists, and computational chemists focusing on the study
        of STAT5 (Signal Transducer and Activator of Transcription 5) proteins.
        This package offers a robust set of tools to interface with the Protein
        Data Bank (PDB), enabling users to efficiently retrieve, analyze, and
        visualize STAT5 structures and their interactions. The package is
        particularly adept at exploring protein-ligand interactions,
        understanding STAT5’s role in various signaling pathways, and examining
        its interactions with other proteins and potential inhibitors.
        Furthermore this package can be used to help people to find suitable
        PROTACs for STAT5"),
      br(),
      helpText("Select a dataset and visualize protein structures or expression levels."),
      selectInput("dataset", "Choose a Dataset:", 
                  choices = c("Protein Structure", "Expression Data")),
      actionButton("view", "View Data")
    ),
    mainPanel(
      plotOutput("plot")
    )
  )
)

server <- function(input, output) {
  
  observeEvent(input$view, {
    if (input$dataset == "Protein Structure") {
      # Placeholder for protein structure visualization
    } else if (input$dataset == "Expression Data") {
      output$plot <- renderPlot({
        data <- PROstat5::data_sets
        show_expression_plot(data)
      })
    }
  })
}

shiny::shinyApp(ui, server)

#[END]

