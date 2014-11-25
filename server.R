library(shiny)

basal_metabolic_rate <- function(gender, weight, height, age){
  if(gender=="male"){66.473+(13.7516*weight)+(5.0033*height)-(6.755*age)}else{655.0955+(9.5634*weight)+(1.8496*height)-(4.6756*age)}
}

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$gender})
    output$inputValue2 <- renderPrint({input$weight})
    output$inputValue3 <- renderPrint({input$height})
    output$inputValue4 <- renderPrint({input$age})
    output$prediction <- renderPrint({basal_metabolic_rate(input$gender, input$weight, input$height, input$age)})
  }
)
