getwd()
mydataframe <- read.table(file = 'mydataframe.txt')
mydataframe
mydataframe <- read.csv(file = 'mydataframe.txt')
mydataframe
mydataframe <- read.csv(file = 'mydataframe.txt',row.names = 1)
mydataframe
write.table(mydataframe, 'tab_sperated_file.txt', sep = ' ')
