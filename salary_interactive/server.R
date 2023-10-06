#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

load("data.rda")

# Define server logic required to draw a histogram
function(input, output, session) {
    
    data <- reactive({
        result <- companies[companies$company_size == input$size, ] 
        if (input$na_rm){
            result <- result[result$mean_salary_max >= 100, ]
        }
        return(result)
    })
    
    output$salary_plot <- renderPlot({
        
        ggplot(data(), aes(x = mean_salary_min)) + 
            geom_histogram(bins = input$bins, 
                           fill = "lightblue", color = "black") + 
            theme_bw() + 
            labs(title = "Distribution of Average Minimum Salary", 
                 x = "Avg. Max Salary", y = "Frequency")
        
    })

}
