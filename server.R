library(shiny)
library(dplyr)
library(ggplot2)

# loading dataset
data("quakes")
quakes <- quakes
quakes$depth <- as.numeric(quakes$depth)
# fit different linear models for testing
#m1 <- lm(mag ~ depth, data=quakes)
#m2 <- lm(mag ~ depth + lat, data=quakes)
#m3 <- lm(mag ~ depth + lat + long, data=quakes)

magFit <- lm(mag ~ lat + long + depth + stations, data=quakes)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$inputText <- renderText({
    paste("When the latitude is",
          strong(round(input$lat, 1)),
          ", the longitude is",
          strong(round(input$long, 1)),
          ", the depth is",
          strong(round(input$depth, 1)),
          "and the number of stations reporting is",
          strong(round(input$stations, 1)),
          ", then:")
  })
  output$prediction <- renderText({
    df <- data.frame(lat=input$lat,
                     long=input$long,
                     depth=input$depth,
                     stations=input$stations)
    ch <- predict(magFit, newdata=df)
    paste0(
           "the magnitude is approximately ",
           em(strong(round(ch, digits = 1)))
         )
  })
})
