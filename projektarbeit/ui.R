ui <- dashboardPage(
  
  header <- dashboardHeader(title = "Projektarbeit BA-AE",
                          
    dropdownMenu( type = "notifications", 
                  icon = icon("question-circle"),
                  badgeStatus = NULL,
                  headerText = "Kontakt / Support",
                  
                  notificationItem("Fragestellung", icon = icon("question-circle"),
                                   href = "test.pdf"),
                  notificationItem("shiny", icon = icon("info"),
                                   href = "http://shiny.rstudio.com/"),
                  notificationItem("shinydashboard", icon = icon("info"),
                                   href = "https://rstudio.github.io/shinydashboard/"),
                  notificationItem("Datengrundlage", icon = icon("info"),
                                   href = "https://www.gesis.org/allbus/download/"),
                  notificationItem("Email", icon = icon("send"),
                                   href = "mailto:karl-heinz.dees@studmail.htw-aalen.de?subject=Email%20Betreff")
 )
                  
        
                 
    
    ),
  
  dashboardSidebar(
    sidebarUserPanel("Karl-Heinz Dees 73304"),
      sidebarMenu(id = "tabs",
                  menuItemOutput("sidebar1"),
                  #sidebarMenuOutput("sidebar2"),
          menuItem("Übersicht", tabName = "dashboard", icon = 
                     icon("dashboard")),
          actionButton("action", "Bestätigen"),
                  
          menuItem("Import", tabName = "import", icon = icon("upload",lib = 'glyphicon')),
                   # menuItem(wellPanel("upload", tabName = "upload",fileInput("file1", "Import",
                    #                                                accept = c(
                     #                                                 "text/comma-separated-values,text/plain",
                      #                                                ".csv",
                       #                                               
                        #                                              ".sav"),
                         #                                           buttonLabel = "Durchsuchen",
                          #                                          placeholder = "keine Datei ausgewählt",
                           #                                         multiple = FALSE
                    #),
                    #helpText("max. Dateigröße 5MB", tags$br(),"kann über die Option", tags$br(),"options(shiny.maxRequestSize=30*1024^2) geändert werden"))),
          menuItem("univariate Analyse", tabName = "univariate", icon = icon("th"), selected = TRUE),
          menuItem(wellPanel("Einstellungen", tabName = "einst", sliderInput("slider", "Jahr", min = (2000),max = (2016), sep = "", value = 2000, step = 1, post = " Jahr"),
                                         selectInput("choice","Merkmale auswählen:", multiple = FALSE, choices = "Testauswahl")
                   )),
        menuItem("bivariate Analyse", icon = icon("th"), tabName = "bivariate"),
        menuItem(wellPanel("Einstellungen", tabName = "einst", sliderInput("bislider", "Jahr", min = (2000),max = (2016), sep = "", value = 2000, step = 1, post = " Jahr"),
                           selectInput("bichoice","Merkmale auswählen:", multiple = TRUE, choices = "Textauswahl")
        )),
        menuItem("Zeitreihenanalyse", icon = icon("signal",lib='glyphicon'), tabName = "Zeitreihenanalyse"),
        sidebarSearchForm(label = "Suchen", textId = "searchText", buttonId = "searchButton")
      
  ),width = 400),
  
   
  body <- dashboardBody(
     #  textOutput("text"),
    tabItems(
      tabItem(tabName = "dashboard", 
              tabBox(
                title = "Übersicht", width = NULL,
               tabPanel("Aufgabe",h3 ("Aufgabe"))
            #    tabPanel("Fragestellung",print(var_sort)),
             #   tabPanel("Datengrundlage", dataTableOutput("zusam"))
              )),
      tabItem(tabName = "import",

    tabBox(
      title = "Import", width = NULL,
         tabPanel("Dateiinfo",dataTableOutput("filedf")),
         tabPanel("Daten",dataTableOutput("tabelle")),
         tabPanel("Zusammenfassung", dataTableOutput("zusam"))
    )
      ),
    tabItem(tabName = "univariate" 
            
          #  tabBox(
    #  title = "Sie haben univariate Analyse gewählt", width = NULL,
     # tabPanel("Daten",h3 ("Aufgabe")),
    #  tabPanel("Grafiken",dataTableOutput("tabelle")),
     # tabPanel("Interpretation", dataTableOutput("zusam"))
    ),
    tabItem(tabName = "bivariate", h2 ("bivariate")),
            tabItem(tabName = "Zeitreihenanalyse", h4 ("zeit"), tags$hr(),tags$br(), h3 ("zeit") )
   ) ))
    
