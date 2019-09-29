A <- matrix(c(1,2,4,4,3,5,4,3), nrow=2, ncol=4)
colnames(A) <- c("first","second","third","last")
B <- A+3
C <- A+B
D <- cbind(A, c(1,2))
D[ ,3]