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

# Histogram
heights <- c(
  158, 160, 162, 163, 164,
  165, 165, 166, 167, 168,
  168, 169, 170, 170, 171,
  172, 172, 173, 174, 175,
  176, 178, 180, 182, 185
)
heights
length(heights)
hist(heights)
min(heights)
max(heights)
hist(heights, breaks=9)
hist(heights, breaks=c(150, 158, 166, 174, 182, 190))

# Boxplot
class_a <- c(65, 70, 72, 75, 78, 80, 82, 85, 90)
class_a
is.vector(class_a)
is.list(class_a)
boxplot(class_a)

class_b <- c(55, 60, 62, 65, 68, 70, 72, 75, 78)
class_c <- c(70, 72, 75, 76, 77, 78, 80, 81, 82)
boxplot(list(class_a, class_b, class_c))

# Piechart
expenses <- c(500, 250, 100, 150, 100)
pie(expenses)
expenses[4]
categories <- c("Rent", "Food", "Transport", "Entertainment", "Other")
categories
pie(expenses, labels=categories)

paste("Buna", "ce", "faci", "?") # 4 vectori
paste0("Buna", "ce", "faci", "?")
paste("Buna", "ce", "faci", "?", sep="+")
paste("Buna", "ce", "faci", "?", sep="<===>")

paste(categories) # 1 vector
paste(categories, " %") # 2 vectori: primul este un vector de 5 char cu categoriile, al doilea e un vector de lungime 1
paste(categories, "(", expenses, "EUR)")
paste0(categories, "(", expenses, "EUR)")
paste(categories, " (", expenses, " EUR)", sep ="")
pie(expenses, labels=paste(categories, " (", expenses, " EUR)", sep =""))

total <- sum(expenses)
total
percentage <- expenses / total * 100
percentage

cat_w_percentage <- paste(categories, " (", round(percentage), "%)", sep ="")
pie(expenses, labels=cat_w_percentage)

# sort(expenses)
# expenses

expenses_list <- list()
# expenses_list['Rent'] <- expenses[1]
# expenses_list['Food'] <- expenses[2]
cur_index <- 1
for (cat in categories) {
  expenses_list[cat] <- expenses[cur_index]
  cur_index <- cur_index + 1
}
expenses_list
sort(expenses_list)
lapply(expenses_list, sort)
# s_exp <- sapply(expenses_list, sort)
s_exp <- unlist(expenses_list)
is.vector(s_exp)
is.list(s_exp)
sorted_expenses_vec <- sort(s_exp)
# list(c(4, 6, 25), c(945, 184, 44))

pie(sorted_expenses_vec)
initial_cat_keys <- names(sorted_expenses_vec)
paste(initial_cat_keys, " (", round(sorted_expenses_vec / total * 100), "%)", sep ="")
# Important! Replace keys
names(sorted_expenses_vec) <- paste(initial_cat_keys, " (", round(sorted_expenses_vec / total * 100), "%)", sep ="")
sorted_expenses_vec
pie(sorted_expenses_vec)

# Heatmap
vanzari <- matrix(
  c(12, 8, 15, 22, # Incaltaminte
    20, 25, 28, 35, # Electronice
    18, 14, 20, 30, # Haine
    10, 12, 14, 40), # Jucarii
  nrow = 4, byrow = TRUE
)
vanzari
vanzari[3,4]
heatmap(vanzari)
heatmap(vanzari, Rowv=NA, Colv=NA)
heatmap(vanzari, Rowv=NA, Colv=NA, col=heat.colors(1000, rev=TRUE))
heatmap(vanzari, Rowv=NA, Colv=NA, col=cm.colors(1000))
rownames(vanzari) <- c("Incaltaminte", "Electronice", "Haine", "Jucarii")
colnames(vanzari) <- c("Primavara", "Vara", "Toamna", "Iarna")
