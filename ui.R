library(shiny)
# Relys on the 'trees' dataset in the datasets package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(       
        # Use a fluid Bootstrap layout
        fluidPage(                    
                # Give the page a title
                titlePanel("Girth or Height by Volume for Black Cherry Trees"),                
                # Generate a row with a sidebar
                sidebarLayout(                              
                        # Define the sidebar with one input
                        sidebarPanel(
                                selectInput("options_selector", "Calculate the ratio of selected option to tree's Volume:", 
                                            choices=colnames(trees)), #dataset name
                                hr(),
                                helpText("Because your boss always wanted to know that, right?")
                        ),                       
                        # Create a spot for the plot
                        mainPanel(
                                plotOutput("myPlot")  
                        )                        
                )
        )
)