# COLUMBUS, GA

library(shiny)
library(shinythemes)
library(leaflet)
library(rgdal)
library(rsconnect)
library(scales)
library(shinyalert)
library(plotly)
library(googlesheets)


## An exmaple
## from: https://blog.myhappydata.com/rstats/2018/06/02/valuebox-without-shinydashboard.html
valueBox <- function(value, subtitle, icon, color) {
  div(class = "col-lg-3 col-md-6",
      div(class = "panel panel-primary",
          div(class = "panel-heading", style = paste0("background-color:", color),
              div(class = "row",
                  div(class = "col-xs-3",
                      icon(icon, "fa-5x")
                  ),
                  div(class = ("col-xs-9 text-right"),
                      div(style = ("font-size: 56px; font-weight: bold;"),
                          textOutput(value)
                      ),
                      div(subtitle)
                  )
              )
          )
          
      )
  )
}

ui <- navbarPage(title="Fourth Economy Community Index",
                 id = "nav_bar_tabs",
                  theme = shinytheme("sandstone"),
                  tabPanel("analysis",
                          sidebarPanel("Text", width=2),
                          mainPanel(textOutput("Text display"))
                          
                  ),
                  tabPanel("About this Project",
                           tags$h1("Welcome!", align="center")),
                 
                 tabPanel("Index Dashboard", value = "dashboard"),
                  
                 tabPanel("Top Ten Rankings",
                 tags$head(includeCSS("styles.css"))
                 )
)
                        


