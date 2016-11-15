### Exercise 2 ###

library(shiny)
# It should return a rendered plot
shinyServer(function(input, output) {
  output$scatter <- renderPlot({ 
    x <- rnorm(input$num)
    y <- rnorm(input$num)
    return(plot(x,y, col=input$color))
  })

  
})