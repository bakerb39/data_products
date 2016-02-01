# Coursera - Developing Data Products- Course Project
# Author: Brian Baker
# Date: 1.31.16

# server.R file for the shiny app

# This app allows a user to select a hospital based on the type of services provided

library(shiny)
library(dplyr)

#Download the data file and unzip.

if (!"hospType_data.csv" %in% dir("./data/")) {
  download.file("https://github.com/bakerb39/data_products/blob/master/data/hospType_data.csv", destfile = "data/hostType_data.csv")
  unzip("data/hospType_data.csv", overwrite=T, remove=F)
}

if (!"hospType_data" %in% ls()) {
  hospType_data <- read.csv("data/hospType_data.csv", sep = ",")
}

shinyServer(function(input, output) {
  
  #output$outstate <- renderPrint({input$state})
  #output$outown <- renderPrint({input$own})
  
  # Show the cars that correspond to the filters
  output$table <- renderDataTable({
#     data <- transmute(hospType_data, Hosp = rownames(hospType_data),
#                       "Provider ID" = Provider.ID,
#                       "Hospital Name" = Hospital.Name,
#                       Address = Address,
#                       City = City,
#                       State = State,
#                       "ZIP code" = ZIP.Code,
#                       "County Name" = County.Name,
#                       "Phone Number" = Phone.Number,
#                       "Hospital Type" = Hospital.Type,
#                       "Emergency.Services" = Emergency.Services,
#                       "Hospital.Ownership" = Hospital.Ownership
#                       )
    data <- hospType_data
    data <- filter(data, State %in% input$state,
    Hospital.Type %in% input$type,
    Emergency.Services %in% input$emergency,
    Hospital.Ownership %in% input$own)
    data
  }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30))
})