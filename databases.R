population <- read.csv("population.csv", sep=",")

install.packages("DBI")
install.packages("RMySQL")
library(DBI)
library(RMySQL)

conMySQL <- dbConnect(MySQL(), dbname="testdb", user="henk",password= "a1b2c3d4E5_!HdV", host="localhost")
dbListTables(conMySQL)
dbReadTable(conMySQL,"persons")
cn <- dbGetQuery(conMySQL,"SELECt * FROM persons")
cn
dbListFields(conMySQL, "persons")
pop <- read.csv(file = "c:\\tools\\pop.csv", sep="," )
pop

dbWriteTable(conMySQL, "persons", "henk" , append=TRUE, row.names=FALSE, overwrite=FALSE)

