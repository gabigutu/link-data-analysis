venit_net <- function(venit, procent = .16){
  suma.impozit <- venit * procent
  net <- venit - suma.impozit
  return(net)
}
venit_net(1000)

salutare <- function(x) {
  if (inherits(x, "matrix")) {
    return(0)
  }
  # stopifnot(!inherits(x, "matrix")) # Eroare controlata
  UseMethod("salutare")
}
salutare.default <- function(x) {
  # print(c("Salutare, ", x))
  print(paste0("(Def) Salutare, ", x, "!"))
}
salutare.Persoana <- function(x) {
  print(paste0("(Per) Salutare, ", x$nume, "(" , x$varsta, ")!"))
  # x$varsta
}
salutare.Animal <- function(x) {
  print(paste0("(Ani) Salutare, ", x$tip, "!"))
}
salutare('Vasile')
salutare(40)
salutare(FALSE)
p.vasile <- list("nume" = "Vasile", "varsta" = 40)
class(p.vasile) <- "Persoana"
p.vasile
salutare(p.vasile)
# concat("Salutare, " / "Vasile" / ) 

maimuta <- list("tip" = "Maimuta")
class(maimuta) <- "Animal"
salutare(maimuta)

class(maimuta) <- c("Animal", "Persoana")
maimuta
salutare(maimuta)

class(maimuta) <- c(class(maimuta), "Avion")
maimuta

m <- matrix(nrow = 5, ncol = 4)
m
m[,3] <- 7
m
salutare(m)

class(m)
# sum
class(m) <- c(class(m), "Persoana")
class(m)
salutare(m)

inherits(m, "Persoana")
inherits(m, "Animal")
inherits(m, c("Persoana", "matrix"))
inherits(m, c("Persoana", "Animal"))
class(m)

x <- 9
class(x)
class(salutare)

stopifnot(TRUE, TRUE)
print('Test')

salutare(m)
class(m)

salutare(p.vasile)

x
stopifnot(x > 15)

x <- c(x, 2:7, 15:19)
x
stopifnot(x > 15)

x <- x + 30
x
stopifnot(x > 15)

salutare.Animal(m)

p.vasile
maimuta
# elements <- c(p.vasile, maimuta) # formeaza un vector (si imi sterge clasele)
elements <- list(p.vasile, maimuta)
for (elem in elements) {
  print(class(elem))
  salutare(elem)
}

lapply(elements, salutare)

# install.packages("dplyr")
library("dplyr")

studenti <- data.frame(
  "nume" = c('Vasie', 'Andrei', 'Ionela', 'Alexandru'),
  "nota" = c(9.6, 8.5, 4.9, 7.1)
)
studenti
studenti$nume

filter(studenti, studenti$nota >= 5)
studenti$nume.fam <- c('Popescu', 'Anghel', 'Hulubei', 'Tonciu')
studenti$luna.examen <- c('Iulie', 'Septembrie', 'Iulie', 'Iulie')
studenti

filter(studenti, studenti$nota >= 5)
filter(studenti, studenti$nota >= 5, studenti$luna.examen == 'Iulie')
dplyr::filter(studenti, studenti$nota >= 5, studenti$luna.examen == 'Iulie')
stats::filter(studenti, studenti$nota >= 5)

# install.packages("ggplot2")
library(ggplot2)

ggplot(studenti, aes(nume, nota)) + geom_col() + theme_bw() + labs(title = 'Graficul notelor', x = 'Student', y = 'Nota Examen')

p.vasile
maimuta
p.vasile + maimuta
p.vasile + p.vasile
class(p.vasile)

"+.Persoana" <- function(a, b) {
  return(a$varsta + b$varsta)
}
p.vasile + p.vasile
p.vasile + maimuta
maimuta$varsta 
80 + NULL # numeric(0)
NA + NA
NA * NA
NA * NULL # integer(0)

# library('vasilica')
# printeaza('Test')
