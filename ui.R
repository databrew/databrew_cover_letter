library(shiny)
library(knitr)

# Define UI for application
shinyUI(pageWithSidebar(
  
  ## Application title
  headerPanel("The letterator!"),
  
  ## Sidebar panel
  sidebarPanel("The letterator automatically generates cover letters for potential Databrew partners.",
               br(),
               br(),
               
               "The source code is available on ",
               a(href = "https://github.com/databrew/databrew_cover_letter",
                 "GitHub."),
               br(),
               br()
  ),
  
  
  ## Main panel
  mainPanel(
    wellPanel(
      textInput("to", "To whom are you addressing this letter?",
                "Sir/Madam"),
      textInput("author","Author of the letter",
                "Xing Brew"),
      textInput("title", "Job title of letter writer",
                "Chief Operating Officer, Databrew"),
      textInput('job', 'Job being applied to',
                'Analyst'),
      textInput('company', 'Company being applied to',
                'ACME industries'),
      textInput('last_paragraph', 'Last paragraph (optional) with extra information',
                'Thanks for considering our application.')),
  downloadButton("downloadPDF", "Download your letter!")
)
))
