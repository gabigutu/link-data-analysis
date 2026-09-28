platforms <- c(230, 270, 150, 200, 240)
platforms
is.vector(platforms)
length(platforms)
barplot(platforms)
platforms_names <- c("Netflix", "YouTube", "Disney+", "Amazon Prime", "Spotify")
barplot(platforms, names.arg=platforms_names, horiz=TRUE)

sorted_platforms <- sort(platforms)
sorted_platforms
sorted_names <- c("Disney+", "Amazon", "Netflix", "Spotify", "YouTube") # sortare "manuala"
barplot(sorted_platforms, names.arg=sorted_names)

x <- list(5, 9, 14) # lista de 3 vectori de lungime 1
x
x[[2]]
x[[2]][1]

y <- list(8, c(5, 11), 11:14) # lista de 3 vectori de lungimi diferite
y
y[[2]][2]
is.vector(y)
is.list(y)
is.vector(y[[2]])
is.list(y[[2]])

z <- list("unu" = 87, "cinci" = 65, "noua" = 76)
z
z[["cinci"]]
z$cinci

t <- list("ceva" = c(76, 89, 13), "altceva" = 98)
t

s <- list("test" = 8:10, 98)
s
s[["test"]]
s[[2]]
s[[1]]
s$test

u <- list(103, "nume" = c("Popescu", "Vasile"), "alive" = TRUE) # listele sunt eterogene
u

vect <- c(98, 13, "Vasile", FALSE) # vectorii sunt structuri de date omogene
vect

w <- list(87, c("Andrei", "Haralambie"), u)
w
w[[3]][[2]][2]
w[3][2][2]
w[3]
w[[3]]
w[3][[1]]

platforms
platforms_names
platforms_with_names <- list()
platforms_with_names
for (i in 1:length(platforms)) {
  key = platforms_names[i]
  value = platforms[i]
  platforms_with_names[[key]] <- value
}
platforms_with_names

# barplot(platforms_with_names) # barplot doesn't accept list

platforms_vec <- unlist(platforms_with_names)
platforms_vec
is.vector(platforms_vec)
platforms_vec["Netflix"]
platforms_vec[1]
barplot(platforms_vec)

days <- 1:7
day_names <- c("Luni", "Marți", "Miercuri", "Joi", "Vineri", "Sâmbătă", "Duminică")
temperature <- c(18, 20, 21, 19, 23, 26, 24)
# plot(day_names, temperature, type='b', ylim = c(0, max(temperature)))
plot(days, temperature, type='b', ylim = c(0, max(temperature)), xlab = "Zilele saptamanii", xaxt="n")
# plot(days, type='b', ylim = c(0, max(temperature)))
axis(side=1, at=days, labels=day_names)

# Scatter plot
student_id <- 1:12
hours <- c(1, 2, 2, 3, 4, 4, 5, 6, 7, 8, 9, 10)
grades <- c(5, 5.5, 6, 6.2, 6.8, 7, 7.5, 8, 8.4, 9, 9.2, 9.5)
plot(student_id, hours, type = 'b', ylim = c(0, max(hours, grades) + 1), col="#7b6ac9")
lines(student_id, grades, type = 'b', col="#fe1222")
title("Ore de studiu vs. nota la examen")
legend("topleft", legend = c('Ore de studiu', 'Note student'), col = c("#7b6ac9", "#fe1222"), lwd=3)
# 7b = 16^0 * b + 16^1 * 7 = 1 * 11 + 16 * 7 = 11 + 112 = 123
# ff = 16*0 * f + 16^1 * f = 1 * 15 + 16 * 15 = 15 + 240 = 255
# 00 = 0
