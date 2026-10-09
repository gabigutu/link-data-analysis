# install.packages("usethis")
# install.packages("devtools")

library(usethis)
library(devtools)
create_package("vasilica")

#' Afiseaza un obiect impreuna cu prefixul "Afisez "
#' @export
printeaza <- function(x) {
  print(paste0("Afisez ", x))
}
