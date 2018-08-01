library(shiny)
library(shinydashboard)
library(shinyjs)
library(DT)
library(foreign)
library(data.table)
library(haven) # import spss-dateien
options(digits.secs =3)
#var <- c("Erhebungsjahr","Deutsche StaatsangehÃ¶rigkeit","Body-Mass-Index","Nettoeinkommen","Geschlecht","Alter","Allgemeiner Schulabschluss",
#        "Beruflicher Schulabschluss","GrÃ¶Ãe in cm","Gewicht in kg","jetzige berufliche Stellung","Online-Dienste nutzen","Internet nutzen","HÃ¤ufigkeit Internetnutzung\n",
#         "Allgemeine Lebenszufriedenheit","Bundesland")
#var_sort <- sort(var)
#file.choose()
#allbus = read.spss(file.choose(), to.data.frame=TRUE)