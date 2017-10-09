library(shiny)

shinyUI(fluidPage(
  titlePanel("Prediction of earthquake magnitude"),
  sidebarLayout(
    sidebarPanel(
      helpText("This application predicts the magntiude of earthquakes.
                The initial values are the medians of each input,
                by altering them a new predicted magnitude will be presented."),
      helpText("Please make a choice of parameters:"),
      sliderInput(inputId = "lat",
                  label = "Latitude:",
                  value = -20,
                  min = -90,
                  max = 90,
                  step = 1),
      sliderInput(inputId = "long",
                  label = "Longitude:",
                  value = 181,
                  min = -180,
                  max = 180,
                  step = 1),
      sliderInput(inputId = "depth",
                  label = "Depth:",
                  value = 247,
                  min = 40,
                  max = 680,
                  step = 1),
      sliderInput(inputId = "stations",
                  label = "Stations Reporting:",
                  value = 27,
                  min = 10,
                  max = 132,
                  step = 1)
    ),
    
    mainPanel(
      htmlOutput("inputText"),
      htmlOutput("prediction")
    )
  )
))
