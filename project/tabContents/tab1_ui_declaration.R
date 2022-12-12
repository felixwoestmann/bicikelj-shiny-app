tab1 <- function() {
  return(
    tabPanel('1. Popular Stations',
             wellPanel(
               h2('Instructions'),
               p("This tab allows the user to interactively analyze data about the most popular stations."),
             ),
             wellPanel(
               h3('Select number of stations to display'),
               sliderInput('popularStattionsNumberOfStations',
                           label = "Number of stations",
                           min = 1, max = 84, value = 10,
                           animate = TRUE),),
             fluidRow(
               column(6,
                      h3("Plot Overview"),
                      plotOutput("popularStattionsOverviewPlot")),
               column(6,
                      h3("Map Overview"),
                      plotlyOutput("popularStationsMapOverview",
                                   height = "100%",
                                   width = "100%"))
             )

      ,
    )
  )
}