head(mtcars)
dim(mtcars)
nrow(mtcars)
ncol(mtcars)
mtcars[1,2]
mtcars["Mazda RX4","cyl"]
hist(mtcars$mpg)
hist(mtcars$mpg,breaks = 10)
boxplot(mtcars$mpg,mtcars$cyl)
boxplot(mtcars$mpg ~mtcars$cyl)
plot(mtcars$mpg)
plot(mtcars$hp,mtcars$mpg)
