# help(matrix)
m <- matrix(7:13)
# matrix(1:6, byrow = TRUE)
print(m)
m[2,1]
m[6,1]
m[,1]
is.vector(m[,1])
m[4,]
is.vector(m[4,])
x <- 8
is.vector(x)
m1 <- matrix(23:40, ncol = 4)
m1
m1[4,3]
m1[,3]
m1[4,]
23:40
no_pages <- c(34, 87, 90, 14, 41, 80, 55, 87, 10, 15, 19, 90, 76, 15, 50)
m_pages <- matrix(no_pages, nrow = 2)
m_pages
m_pages[,6]
m_pages[2,]
is.matrix(m_pages)
is.matrix(x)
is.vector(x)
length(x)
is.vector(m_pages)
mp_col <- matrix(no_pages, nrow = 4) # byrow = FALSE
mp_col
mp_row <- matrix(no_pages, nrow = 4, byrow = TRUE)
mp_row
mp_col[1,2]
mp_row[1,2]
mp_row[,3]
mp_col[,3]
mp_row[,3] + 5
mp_row
mp_row[,3] = mp_row[,3] + 5 # functionalitate majora din R (operatii pe vectori)
mp_row
mp_row[,3] + mp_col[,3]
mp_row[,3] + 8:10 # [8, 9, 10]
mp_row[,3] + 10:15 # [10, 11, 12, 13, 14, 15]
mp_row
mp_col
mp_row + mp_col # adunare de matrice
mp_row * mp_col
# rez[i,j] = mp_row[i,j] * mp_col[i,j]
9:13
21:24 
9:13 * 21:24
mp_col[4,3]
mp_col[4][3]
mp_col[4]
mp_col[4,]
mp_col[4,1]
mp_col[4]
is.vector(mp_col[4])
mp_col[4] # vector de lungime 1
mp_col[4][1] # pot sa iau pozitia 1 dintr-un vector de lungime
mp_col[4][3] # nu pot sa iau pozitia 3 dintr-un vector de lungime
mp_col[4][2] # nu pot sa iau pozitia 2 dintr-un vector de lungime
dim(mp_col)
is.vector(dim(mp_col))
dim(m_pages)
dim(m_pages)[1] # 2
dim(m_pages)[2] # 8
nrow(m_pages) # 2
ncol(m_pages) # 8
