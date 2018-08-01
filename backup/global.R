library(shiny)
library(shinydashboard)
library(shinyjs)
library(DT)
library(foreign)
library(data.table)
library(haven) # import spss-dateien
options(digits.secs =3)
#var <- c("Erhebungsjahr","Deutsche Staatsangehörigkeit","Body-Mass-Index","Nettoeinkommen","Geschlecht","Alter","Allgemeiner Schulabschluss",
#        "Beruflicher Schulabschluss","Größe in cm","Gewicht in kg","jetzige berufliche Stellung","Online-Dienste nutzen","Internet nutzen","Häufigkeit Internetnutzung\n",
#         "Allgemeine Lebenszufriedenheit","Bundesland")
#var_sort <- sort(var)
#file.choose()
#allbus = read.spss(file.choose(), to.data.frame=TRUE)