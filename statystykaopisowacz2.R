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

#do IQR funkcja wbudowana ; rozstep miedzykwartylowy
IQR(v1)
IQR(v2)

quantile(v1)
#rozny type inny wynik , najczesciej 5 i 6
quantile(v1, type = 5)


#wariancja
#odchylenie standardowe - pierwiastek z wariancji
#R bierze N-1 (z proby) przy wariancji i sd ; we wzorze N (z populacji) dlatego ciut inny wynik
var (v1)
var (v2)
sd(v1)
sd(v2)
mean(v1)
mean(v2)

#wspolczynnik zmiennosci - stosunek odchylenia sd do sredniej arytmetycznej

sd(v1)/mean(v1)*100
#wsp zmiennosci 52%  - w danym zbiorze odchylenie sd jest rowne 52% sredniej

sd(v2)/mean(v2)*100
#wsp zmiennosci 20% - w danym zbiorze odchylenie sd jest rowne 20% sredniej

#w rozkladzie normalnym 68% obserwacji pomiedzy -1 i 1 odchyleniem stand (krzywa gaussa/dzwonowa)
#regula 3 sigm ; 


var_withn <- function(x) {
  sumcia <- 0
  for (i in 1:length(x)) {
    b <- sum((x[i] - mean(x)) ^ 2)
    sumcia <- sumcia + b
    i <- i + 1
  }
  print(sumcia / (length(x) - 1))
}
var_withn(v1)
var(v1)

sd_withn <- function(x) {
  sumcia <- 0
  for (i in 1:length(x)) {
    b <- sum((x[i] - mean(x))^2)
    sumcia <- sumcia + b
    i <- i + 1
  }
  print((sumcia / (length(x)-1))^0.5)
}

sd(v2)
sd_withn(v2)

# moze mozna prosciej?

var_bk <- function(x) {
  n <- length(x)
  sum((x - mean(x)) ^ 2) / (n - 1)
}

var_bk(v1)
