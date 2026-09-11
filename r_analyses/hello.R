2
2+2
10/2
sqrt(16)
"Hello world"
a = "test"
a
# Definim un număr (tip "numeric" / double)
varsta <- 28
# Definim un număr întreg explicit (tip "integer") - litera L
id_client <- 105L
# Definim un text (tip "character") - se pune între ghilimele
nume <- "Andrei"
# Definim o valoare logică (tip "logical") - TRUE sau FALSE
este_programator <- TRUE
# typeof(x)
typeof(a)
typeof(este_programator)
class(nume)
class(a)
class(varsta)
typeof(a)
typeof(varsta)
x <- 1:5
x
m <- matrix(1:6, nrow = 2)
m
typeof(m)
class(m)
typeof(x)
class(x)
?mean
2 + 2
7
10 / 2
# sqr(16)
sqrt(16)
x <- 19
x
y = 10
y
is.vector(y)
is.vector(x)
is.vector(13)
a <- 1:2
a
is.vector(a)
length(y)
length(x)
length(a)
x
x + 3
x
a
a + 3
a <- a + 3
a
round(4.78)
round(4.18)
round(x = 6.87)
round(digits = 2, x = 8.32)
round(x = 9.319319841389413, digits = 2)
round(9.319319841389413, 2)
round(digits = 2, x = 9.319319841389413)
round(2, 9.319319841389413)
round(2.83218132838183181238382318312312, 9.319319841389413)
round(x = 645.32)
x
round(x <- 645.32)
x
round(983.3131)
# round(z = 983.3131)
round(x = 983.3131)
x
rez <- round(x = 983.3131)
rez
rez1 = round(x = 983.3131)
rez1
x = round(x = 13.5)
x
x <- round(x = 13.5)
x
round(x <- 900)
x
# digits
round(x = 98.31, digits = 1)
# digits
x
round(x = 98.31, digits <- 1) # not safe (sends parameter to function and also sets a global variable)
digits
a
is.vector(a)
length(2)
mean(a)
x
mean(x)
is.vector(x)
length(1)
x <- 13042
x
x <- 12441.41441
x
x <- "Vasilica"
x
x <- TRUE
x
# x <- true # must be in uppercase
x
typeof(x)
x
x <- "Vasilica"
x
typeof(x)
x <- 12441.41441
x
typeof(x)
x <- 13042
x
typeof(x)
x <- 13042L
x
typeof(x)
a
typeof(a)
is.vector(x)
class(x)
class(a)
x <- 3131.4141
x
typeof(x)
class(x)
typeof(a)
class(a)
is.vector(x)
is.vector(a)
is.vector(rez)
is.numeric(a)
is.numeric(x)
is.numeric(y)
nume <- "Vasilica"
nume
is.vector(nume)
typeof(nume)
is.numeric(nume)
is.character(nume)
is.character(rez)
7 + TRUE
test <- 7 + TRUE
test
is.vector(test)
is.vector(7)
is.vector(TRUE)
9 + FALSE
a
b <- 2:3
b
a + b
typeof(a)
typeof(b)
b <- 1:2
b
v1 <- 7:9
v1
v1 <- 7:15
v1
v2 <- c(5, 14, 12)
v2
v3 <- c(7, 9, 'Vasile')
v3
1:10
1:20
1:30
1:50
8:14
8:50
8:100
v4 <- 8:100
v4[1]
v4[33]
v4[34]
v4[65]
v4[0]
v2
v2[2]
v3
v3[3]
v3[1]
is.character(v3)
is.character(v3[3])
is.vector(v3)
is.vector(v3[3])
v2
is.vector(v2)
is.vector(v2[1])
b
v4
sum(v4)
typeof(sum(v4))
is.vector(sum(v4))
a
sqrt(a)
sqrt(v4)
sqrt(v4) + 2
v5 <- -7:9
v5
abs(v5)
sqrt(abs(v5))
round(sqrt(abs(v5)))
round(sqrt(abs(v5))) + 3
round(sqrt(abs(v5)), 2) + 3
log(6)
log(round(sqrt(abs(v5)), 2) + 3)
1.791759 ^ 2
exp(5)
exp(10)
mean(8)
mean(8:10)
mean(log(round(sqrt(abs(v5)), 2) + 3))
median(log(round(sqrt(abs(v5)), 2) + 3))
ceva <- log(round(sqrt(abs(v5)), 2) + 3)
sort(ceva)
sort(ceva)[9]
sort(ceva)[3]
sd(ceva)
min(ceva)
ceva
max(ceva)
summary(ceva)
# cor(ceva, v4) # incompatible dimensions
# cor(ceva, 9:26) # incompatible dimensions
9:26
length(9:16)
length(9:26)
length(9:25)
cor(ceva, 9:25)
ceva
9:25
c(ceva, 9:25)
c(ceva, 9:25, "Vasile")
dim(ceva)
paste("Vasile", "Popescu")
paste("Vasile", 7)
paste(ceva)
ceva
paste(c("Vasile", "Popescu"))
paste("Vasile", "Popescu")
length(paste("Vasile", "Popescu"))
is.vector(length(paste("Vasile", "Popescu")))
is.character(length(paste("Vasile", "Popescu")))
is.character(paste("Vasile", "Popescu"))
paste(c("Vasile", "Popescu"))
c("Vasile", "Popescu")
paste(c("Vasile", "Popescu"), 90)
tolower(c("Vasile", "Popescu"))
toupper(c("Vasile", "Popescu"))
substr(toupper(c("Vasile", "Popescu")), 1, 3)
# plot(1:5, 2:10) # lengths differ
plot(1:5, c(90, 54, 12, 30, 14))
hist(6:7)
hist(ceva)
barplot(803, 313, 422)
barplot(803, 313, 4220)
barplot(c(803, 313, 4220))
altceva <- c(803, 313, 4220)
altceva
barplot(altceva)
?barplot
help("barplot")
savehistory(file = "comenzile_mele.R")
