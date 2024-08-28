
library(shiny)

ui <- fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
    tags$script(src = "custom.js")
  ),
  titlePanel("Adjustable Width Shiny App Example"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("width", 
                  "Adjust Width:", 
                  min = 1500, 
                  max = 4000, 
                  value = 1500, 
                  step = 100)
    ),
    mainPanel(
      div(id = "content", class = "custom-container",
          fluidRow(
          column(3,style = "background-color: lightblue;height:400px;", "Content in column 1"),
          column(3,style = "background-color: lightgreen;height:400px;", "Content in column 2"),
          column(3,style = "background-color: lightyellow;height:400px;", "Content in column 3"),
          column(3,fluidRow(
            column(6, style = "background-color: Gray;height:400px;", "Content in a nested column 1"),
            column(6, style = "background-color: Violet;height:400px;", "Content in a nested column 2"))
          )
          ),
          fluidRow(column(3,plotOutput("boxPlot")),
                   column(3,plotOutput("histogram")),
                   column(3,plotOutput("scatterPlot")),
                   column(3,plotOutput("linePlot")))
      )
    )
  )
)

server <- function(input, output, session) {
  observe({
    # Update the width of the container dynamically
    updateCss <- sprintf(".custom-container { width: %dpx; }", input$width)
    session$sendCustomMessage(type = 'updateCSS', message = updateCss)
  })
  
  output$boxPlot <- renderPlot({
    boxplot(iris$Sepal.Length ~ iris$Species, main = "Box Plot of Sepal Length by Species", col = "orange")
  })

  output$histogram <- renderPlot({
    hist(mtcars$mpg, main = "Histogram of MPG", col = "green", xlab = "Miles Per Gallon")
  })
  
  output$scatterPlot <- renderPlot({
    plot(iris$Sepal.Length, iris$Petal.Length, main = "Scatter Plot",
         xlab = "Sepal Length", ylab = "Petal Length", pch = 19, col = "purple")
  })
  
  output$linePlot <- renderPlot({
    plot(cars, type = "o", col = "red", main = "Line Plot", xlab = "Speed", ylab = "Stopping Distance")
  })
  
  output$barPlot <- renderPlot({
    barplot(VADeaths, main = "Bar Plot", col = "blue")
  })
}

shinyApp(ui = ui, server = server)
