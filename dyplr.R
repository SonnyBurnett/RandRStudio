#
# First install dyplyr and load it
install.packages("dplyr")
library(dplyr)

#
# Read a new file in dataframe msleep
msleep <- read.csv(file="c:\\tools\\msleep.csv")
msleep

#
# Check what kind of object is returned
class(msleep)

#
# Show only the orde column
msleep %>% 
      select(order)

#
# Show only Primates
msleep %>% 
      filter(order == "Primates")

#
# count the number of rows
count(msleep %>% filter(order == "Primates"))

ms <- msleep %>% filter(order == "Primates")
count(ms)
class(count(ms))

#
# What class is it now
class(msleep %>% filter(order == "Primates"))

class(count(msleep %>% filter(order == "Primates")))

#
#
msleep %>% filter (order == "Primates") %>% select(sleep_total)
msleep %>% filter (order == "Primates") %>% select(sleep_total) %>% class()


#
# count total of sleep for primates
msleep %>% filter(order == "Primates") %>% count(sleep_total)

#
#
sl <- msleep %>% filter (order == "Primates") %>% select(sleep_total)
mean(unlist(sl))

#
# Not yet ok. summarize
summarise(sl)
summarize(sl)
summarise(msleep)
msleep %>% filter(order == "Primates") %>% summarize()
