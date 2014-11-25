library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Calculate your daily intake of calories!"),
  sidebarPanel(
    numericInput("age", "Your age [years]", 18, min = 0, max = 120, step = 1),
    numericInput("weight", "Your weight [kilograms]", 50, min = 0, max = 200, step = 1),
    numericInput("height", "Your height [centimetres]", 175, min = 0, max = 250, step = 1),
    radioButtons("gender", "Your gender", c("Male" = "male", "Female" = "female")),
    submitButton("Submit")
  ),
  mainPanel(
    h3('Your daily calories intake [kCal]'),
    h4('You entered'),
    verbatimTextOutput("inputValue1"),
    verbatimTextOutput("inputValue2"),
    verbatimTextOutput("inputValue3"),
    verbatimTextOutput("inputValue4"),
    h4('You should consume about kCal/day'),
    verbatimTextOutput("prediction")
  )
))
