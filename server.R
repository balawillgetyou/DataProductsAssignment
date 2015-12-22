library(shiny)
library(shinyapps)
library(UsingR)
library(caret)
library(datasets)
library(e1071)
library(randomForest)
data(iris)
modFit <- train(Species~., data=iris, method="rf",prox=TRUE)


shinyServer(
        function(input, output) {
                
                output$sepal.length <- renderPrint({input$sepal.length})
                output$sepal.width <- renderPrint({input$sepal.width})
                output$petal.length <- renderPrint({input$petal.length})
                output$petal.width <- renderPrint({input$petal.width})
                output$prediction <- renderPrint({diabetesRisk(input$glucose)})
                
                
                iris1 <- iris[1,-5]
                output$test <- renderPrint({
                        input$goButton
                        iris1[1,] <- c(input$sepal.length,input$sepal.width,input$petal.length,input$petal.width)
                        predict(modFit, iris1)
                        })

        }
)
