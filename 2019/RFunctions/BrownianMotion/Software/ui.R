library(shiny)
# Define UI for application
shinyUI(fluidPage(
  # Application title
  titlePanel("Brownian Motion - Biodiversity Science Spring-2019, UMN"),
  # Sidebar for user input
  sidebarLayout(
    sidebarPanel(
      # select how many generations to run
      sliderInput("MY",
                  "Million Years:",
                  min = 1,
                  max = 100,
                  value = 10),
      # select the number of replicates
      sliderInput("NS",
                  "Number of Species:",
                  min = 1,
                  max = 100,
                  value = 10),
      # select the rate of evolution
      sliderInput("rate",
                  "Rate of evolution:",
                  min = .01,
                  max = 5,
                  value = .1),
      # select the part to plot a histogram of
      sliderInput("dens",
                  "Generation to plot:",
                  min = 1,
                  max = 100,
                  value = 10),
      # refresh via a seed change
      actionButton("seed.val", 'Refresh')
    ),
    # Show a plot of the simulation result and make it a bit larger with height argument
    mainPanel(
      plotOutput("distPlot", height = "700px")
    )
  )
))
