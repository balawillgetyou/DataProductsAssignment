library(shiny)
library(shinyapps)
library(UsingR)
library(caret)
library(datasets)
library(e1071)
library(randomForest)


shinyUI(pageWithSidebar(
        headerPanel("Flower species classification using dimensions"),
        sidebarPanel(
                sliderInput('sepal.length', 'Sepal Length',value = 5.843, min = 4.300, max = 7.900, step = 0.05,),
                sliderInput('sepal.width', 'Sepal Width',value = 3.057, min = 2.000, max = 4.400, step = 0.05,),
                sliderInput('petal.length', 'Petal Length',value = 3.758, min = 1.000, max = 6.900, step = 0.05,),
                sliderInput('petal.width', 'Petal Width',value = 1.199, min = 0.100, max = 2.500, step = 0.05,)        
        ),
        mainPanel(
                h3('Species'),
                verbatimTextOutput("test"),
                h3('Description'),
                h5(' 
This application takes user input on dimensions of a flower, runs it through a Random Forest classifier, determines its species and prints out the species names.  
Please give the application a couple of moments to respond. Waiting for a bit after accessing the shinyapps.io URL shows the species as "versicolor" based on default position of the sliders, which are at the mean values of the data set.  
Bumping up the Petal Length alone, to say 5.8, will change the species to "virginica". From here, reducing the Petal width alone to 0.6 will change species to "setosa". Please feel free to test any of the sliders.')
                

         )
))
