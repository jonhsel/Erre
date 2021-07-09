setwd('/home/jonhsel/RFundamentos/part1')

#Help
?sample
#verificação de argumentos
args(sample)

?plot
args(plot)

#Funcoes Built-in
abs(-12)
sum(c(1:10))
mean(c(1:10))
round(c(1.1:9.9)) #arredonda para baixo
rev(c(1:10)) #reverte
seq(1:10) #cria sequencia
sort(rev(1:10))
append(c(1:10), 11)

vec1 <- c(1.2, 2.3, 5.8, 9.7)
vec1
vec2 <- rev(vec1)
vec2
#funcoes dentro de funcoes
mean(c(abs(vec1), abs(vec2)))

#criando funcoes
#nomedafuncao <- function(paramentro){expressao}
myfunc <- function(x){x + x}
myfunc(10)
class(myfunc)

myfunc2 <- function(a,b){
  valor = a ^ b
  print(valor)
}
myfunc2(2,3)

jogando_dados <- function(){
  num <- sample(1:6, size = 1)
  num
}
jogando_dados()
jogando_dados()


#funcoes com muitos parametros
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(2.3, 4.5, 8.7, 9.1)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)

myfunc3(vec1, vec2)

myfunc3(vec1, vec2, vec3)

#
