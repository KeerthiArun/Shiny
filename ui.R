library(shiny)

shinyUI(pageWithSidebar( 
  headerPanel("U.S Crime Rate 1973 "),  
  sidebarPanel( 
    numericInput('age', 'Age of the tree',1,min=1,max =1000,step =1),  
    submitButton('Submit')
    ),
  mainPanel(      
    h3('Predicted Circumfrence'),
    verbatimTextOutput("prediction"),
    plotOutput('newHist')
  )
))
