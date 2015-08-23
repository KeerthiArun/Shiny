library(shiny)
library(caret)
library(datasets)
data("Orange")
ln <- lm(Orange$circumference~Orange$age)
starting_height <- ln$coefficients[[1]]
heigt <- function(age) {age * starting_height}
shinyServer(function(input, output){
  output$prediction <- renderPrint({heigt(input$age)})
  output$newHist <- renderPlot(
    {
      plot(x = Orange$age,y = Orange$circumference,col=Orange$Tree, xlab = "Age of the tree",ylab = "Circumfrence of the tree", main = "Plot created according to data from Orange dataset")
      abline(reg = ln$coefficients)
    }
  )

  }
)