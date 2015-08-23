library(shiny)
# Relys on the 'trees' dataset in the datasets package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {       
        # Fill in the spot we created for a plot
        output$myPlot <- renderPlot({              
                # Render a barplot
                barplot(trees[,input$options_selector] / trees$Volume, #dataset and calcualtions here 
                        main=c(input$options_selector, " by Volume"),
                        ylab="Y",
                        xlab="X")
        })
})
