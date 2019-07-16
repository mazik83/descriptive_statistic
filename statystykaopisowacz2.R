#miary zmiennosci

v1 <- c(1,2,3,4,5,6,6,7,8,9,10,11)
v2 <- c(4,5,5,5,6,6,6,6,7,7,8,8)


install.packages('devtools')
library(devtools)

#instalowanie paczki Bartka
install_github('karabanb/BKmisc')
library(BKmisc)
BKmisc::start_proj()

#some updates

range <- function(x) {
  max(x) - min(x)
}
  
# lub range(1:4)[2] - range(1:4)[1]

range(1:4)

#unikamy pokrywania sie nazw funkcji poprzez dodanie nazwy pakietu:: , np base::funkcja
base::range(1:4)

