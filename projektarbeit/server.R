server <- function(input, output, session) { 
  output$ibox <- renderInfoBox({infoBox("Title",input$count,icon = icon("credit-card"))})
  output$vbox <- renderValueBox({valueBox("Title",input$count, icon = icon("credit-card"))})
observe({print(input$tabs)
  
})
#observe({print(input$tabs)
  
#})

#observeEvent(input$action, {
#  updateTabItems(session, "tabs", "bivariate")
#})
observe({print(input$choice)})
observe({print(input$bichoice)})
observe({print(input$bislider)})
observe({print(input$slider)})
observe({print(input$file1)})
observe({print(input$action)})


#observeEvent(input$action,{
#  newtab <- c("dashboard")
#  updateTabItems(session, "tabs", newtab)
#  output$sidebar <- renderMenu({
#    sidebarMenu(
#      menuItem(
#        "Slider",
#        radioButtons("slider or",
#                     label = "sliderlabel",
#                     choices = c("Slider","or"),
#                     selected = "Slider",
#                     inline = TRUE)
#      )
#    )
#  }
#  )
#})


filedata <- reactive({
  
  infile <- input$file1
  if (is.null(infile)) {
    return(NULL)
  }
  read_sav(infile$datapath)
})
#attach(as.data.frame(filedata)) ##funktioniert nicht
output$filedf <- renderDataTable({
  if (is.null(input$file1)) {return()}
  datatable(input$file1, options = list(scrollX = TRUE, language = list(url ="//cdn.datatables.net/plug-ins/1.10.19/i18n/German.json")))})
output$tabelle <- renderDataTable({
  if (is.null(input$file1)) {return()}
  datatable(filedata(), options = list(scrollX = TRUE, autowidth =TRUE, language = list(url ="//cdn.datatables.net/plug-ins/1.10.19/i18n/German.json")))})
output$zusam <- renderDataTable({
  if (is.null(input$file1)) {return()}
  else{
    m<-as.data.frame.matrix(summary(filedata()))
    row.names(m)<-c("Minimum","erste","Median","Mittelwert","dritte","Maximum","test")
    datatable(m, options = list(scrollX = TRUE, autowidth =TRUE, language = list(url ="//cdn.datatables.net/plug-ins/1.10.19/i18n/German.json")))}})


 #datatable(filedata,options = list(scrollX = TRUE, scrollY = "400px"))
#verbatimTextOutput("Table")
 }