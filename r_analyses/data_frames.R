df_people <- data.frame(
  CNP = c("1098787986521", "2765687654908"),
  Nume = c("Vasile Poptescu", "Adriana Ionescu"),
  Telefon = c("0787211323", "0787442112"),
  Varsta = c(35, 41)
)
df_people
df_people[2,2] # accesare celula pe formatul de la matrix; nu exista: df[2][2]
df_people[1,3]
df_people[2,"Nume"]
df_people[2,"Ceva"]
df_people[2,]
df_people[,2]
df_people[,"Nume"] # imi da un vector

a.b.c <- c(4,3,8) # numele variabilei poate sa contina punct (asa cum contin si unele functii built-in)
a.b.c
is.vector(a.b.c)

is.vector(df_people[,2])
is.vector(df_people[,"Nume"])

is.vector(df_people[2,])

is.data.frame(df_people)
is.data.frame(df_people[2,])
is.data.frame(df_people[,2])

df_people["Nume"] # imi da un data.frame; diferit de df_people[,"Nume"], care imi da un vector
is.vector(df_people["Nume"])
is.data.frame(df_people["Nume"])

sum(df_people[,"Varsta"])
sum(df_people["Varsta"])

df_people[c("Varsta","CNP")] # filtrarea coloanelor unui data.frame
is.data.frame(df_people[c("Varsta","CNP")])
is.vector(df_people[c("Varsta","CNP")])
sum(df_people[c("Varsta","CNP")])

df_people["Varsta"] # furnizeaza data frame cu o singura coloana
df_people$Varsta # furnizeaza vector cu valorile coloanei
df_people[,"Varsta"] # furnizeaza vector cu valorile coloanei
class(df_people$Varsta)
class(df_people["Varsta"])
df_people$CNP
class(df_people$CNP)
df_people$CNP <- as.numeric(df_people$CNP)
class(df_people$CNP)

sum(df_people[c("Varsta","CNP")]) # suma sumelor de pe coloane
sum(df_people)

sume <- colSums(df_people[c("Varsta","CNP")]) # sume individuale pe coloane
class(sume)
is.vector(sume)
sume[1]
sume[2]
sume["Varsta"]
sume["CNP"]

df_people
df_people[1,]
df_people[1:2,]
df_people[c(1,2),]
df_people[c(2,1),]
dup_rows <- df_people[c(2,2),]
dup_rows
class(dup_rows)
dup_rows[2,]
dup_rows[1,]

df_people
df_people["Varsta"]
df_people[4]
df_people[c("Varsta","Nume")]
df_people[c(4,2)]
df_people[2:3]

df_sales <- read.csv("data/sales.csv") # cale relativa de la base-ul proiectului
df_sales
df_sales[9,]
df_sales[,4]
df_sales[,"price"]
df_sales$price
df_sales[4:8,]
df_sales[c(2,5,8,10),]
df_sales[,c(1,3,4)]
df_sales[c(2,5,8,10),c(1,3,4)]
head(df_sales)
head(df_sales, n = 3L)
str(df_sales)
class(df_sales$quantity)
sales_summary <- summary(df_sales)
sales_summary
class(sales_summary)
dim(sales_summary)
dim(df_sales)
is.vector(dim(df_sales))
dim(df_sales)[1]
dim(df_sales)[2]

sales_summary
price_summary <- summary(df_sales$price)
is.vector(price_summary)
price_summary['Max.']
price_summary['Min.']
price_summary['3rd Qu.']
price_summary[1]
price_summary[2]
class(price_summary)
is.na(df_sales)
any(is.na(df_sales))
colSums(is.na(df_sales))
colnames(df_sales)
is.vector(colnames(df_sales))
colnames(df_sales)[4] <- "pret"
colnames(df_sales)
df_sales
