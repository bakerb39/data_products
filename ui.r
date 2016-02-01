# Coursera - Developing Data Products- Course Project
# Author: Brian Baker
# Date: 1.31.16

# ui.R file for the shiny app

# This app allows a user to select a hospital based on the type of services provided

library(markdown)

shinyUI(navbarPage("Select the best type of hospital to meet your needs",
                   tabPanel("Table",
                            
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Provide information about your hospital and the type of care you want"),
                                selectInput("state", "Choose you State:", choices = c('Alabama'='AL','Alaska'='AK',
                                                                                      
                                                                                      'Arizona'='AZ',
                                                                                      'Arkansas'='AR',
                                                                                      'California'='CA',
                                                                                      'Colorado'='CO',
                                                                                      'Connecticut'='CT',
                                                                                      'Delaware'='DE',
                                                                                      'Florida'='FL',
                                                                                      'Georgia'='GA',
                                                                                      'Hawaii'='HI',
                                                                                      'Idaho'='ID',
                                                                                      'Illinois'='IL',
                                                                                      'Indiana'='IN',
                                                                                      'Iowa'='IA',
                                                                                      'Kansas'='KS',
                                                                                      'Kentucky'='KY',
                                                                                      'Louisiana'='LA',
                                                                                      'Maine'='ME',
                                                                                      'Maryland'='MD',
                                                                                      'Massachusetts'='MA',
                                                                                      'Michigan'='MI',
                                                                                      'Minnesota'='MN',
                                                                                      'Mississippi'='MS',
                                                                                      'Missouri'='MO',
                                                                                      'Montana'='MT',
                                                                                      'Nebraska'='NE',
                                                                                      'Nevada'='NV',
                                                                                      'New Hampshire'='NH',
                                                                                      'New Jersey'='NJ',
                                                                                      'New Mexico'='NM',
                                                                                      'New York'='NY',
                                                                                      'North Carolina'='NC',
                                                                                      'North Dakota'='ND',
                                                                                      'Ohio'='OH',
                                                                                      'Oklahoma'='OK',
                                                                                      'Oregon'='OR',
                                                                                      'Pennsylvania'='PA',
                                                                                      'Rhode Island'='RI',
                                                                                      'South Carolina'='SC',
                                                                                      'South Dakota'='SD',
                                                                                      'Tennessee'='TN',
                                                                                      'Texas'='TX',
                                                                                      'Utah'='UT',
                                                                                      'Vermont'='VT',
                                                                                      'Virginia'='VA',
                                                                                      'Washington'='WA',
                                                                                      'West Virginia'='WV',
                                                                                      'Wisconsin'='WI',
                                                                                      'Wyoming'='WY',
                                                                                      'District of Columbia'='DC')),
                                #verbatimTextOutput('outstate'),
                                #verbatimTextOutput('outown'),
                                checkboxGroupInput('type', 'Hospital Type:', c("Acute Care Hospitals"="Acute Care Hospitals", 
                                                                               "ACUTE CARE - VETERANS ADMINISTRATION"="ACUTE CARE - VETERANS ADMINISTRATION",
                                                                               "Childrens"="Childrens",
                                                                               "Critical Access Hospitals"="Critical Access Hospitals"),
                                                                                selected = c("Acute Care Hospitals", "ACUTE CARE - VETERANS ADMINISTRATION","Childrens",
                                                                                            "Critical Access Hospitals")),
                                selectInput("emergency", "Emergency Services:", choices = c('Yes'='Yes','No'='No')),
                                
                                checkboxGroupInput('own', 'Hospital Ownership:', c("Government - Federal"="Government - Federal", 
                                                                                   "Government Federal"="Government Federal",
                                                                                   "Government - Hospital District of Authority"="Government - Hospital District of Authority",
                                                                                   "Government - State"="Government - State",
                                                                                   "Government - Local"="Government - Local",
                                                                                   "Voluntary non-profit - Private"="Voluntary non-profit - Private",
                                                                                   "Voluntary non-profit - Church"="Voluntary non-profit - Church",
                                                                                   "Voluntary non-profit - Other"="Voluntary non-profit - Other",
                                                                                   "Proprietary"="Proprietary",
                                                                                   "Physician"="Physician",
                                                                                   "Tribal"="Tribal"),
                                                                                   selected = c("Government - Federal", 
                                                                                                "Government Federal",
                                                                                                "Government - Hospital District of Authority",
                                                                                                "Government - State",
                                                                                                "Government - Local",
                                                                                                "Voluntary non-profit - Private",
                                                                                                "Voluntary non-profit - Church",
                                                                                                "Voluntary non-profit - Other",
                                                                                                "Proprietary",
                                                                                                "Physician",
                                                                                                "Tribal")),
                                submitButton('Submit')  
                              ),
                             
                              
                              mainPanel(
                                dataTableOutput('table')
                              )
                            )
                   ),
                   tabPanel("About",
                            mainPanel(
                              includeMarkdown("about.md")
                            )
                   )
)
)   