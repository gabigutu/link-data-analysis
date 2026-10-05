v <- c(80, 17, 65, 43, 97, 80, 10, 65, 17, 80)
occ_v <- table(v) # occurences of each value in v
is.vector(occ_v)
is.table(occ_v)
occ_v[1]
occ_v[4]

names <- c("Ion", "Maria", "Andrei", "Ion", "Mara", "Gigel", "Maria", "Andrei", "Alex", "Gigel")
table(names)

table(v, names)

occ_v
names
prop.table(occ_v)
procente_text <- paste0(prop.table(occ_v) * 100, "%")
is.vector(procente_text)

gen <- c("Masculin", "Feminin", "Feminin", "Masculin", "Feminin", "Masculin", "Masculin", "Altul", "Test")
is.vector(gen)
length(gen)
factor(gen)
gen_f <- factor(gen, levels=c("Masculin", "Feminin"))
gen_f
gen_f[3]
gen_f[4]

table(names, gen_f)
c(length(names), length(gen_f))
gen_f[2]
gen_f[2] > "Masculin"

names
length(names)
grupa_v <- c("Copil", "Adult", "Adult", "Senior", "Copil", "Senior", "Adult", "Adult", "Senior")
length(grupa_v)
grupa_fact <- factor(grupa_v, levels=c("Copil", "Adult", "Senior"), ordered = TRUE)
grupa_fact
grupa_fact[3] > "Copil"
grupa_fact[3] < "Senior"
grupa_fact[3] < "Adult"
grupa_fact[3] <= "Adult"

is.factor(grupa_fact)
is.vector(grupa_fact)
as.character(grupa_fact)
is.vector(as.character(grupa_fact))

grupa_fact > "Adult"
sum(grupa_fact > "Adult")
sum(grupa_fact >= "Adult")

table(grupa_fact)
table(grupa_fact)['Copil']

grupa_fact > "Adult"
grupa_fact[grupa_fact > "Adult"]
grupa_fact[grupa_fact >= "Adult"]

occ_v[1]
length(occ_v[1])
