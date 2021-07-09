#array = 2 ou + dimensoes e 1 tipo de dados

array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

#dataframe = é uma matrix com vários tipos de dados
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

#lista = coleção de diferentes objetos
lista1 <- list(a=matrix1, b=vetor)
lista1


#funcao
func1 <- function(x){
  var1 <-x * x
  return(var1)
}
func1(5)


#string

texto <- 'isso eh uma string'
texto
class(texto)

x = as.character(3.14)
x
class(x)

#concatenando
nome = 'Dona'; sobrenome = 'Paulsen'
paste(nome, sobrenome)
cat(nome, sobrenome)


texto2 = '%s é atriz da serie suits ha %d'
class(texto2)
sprintf(texto2, 'Dona Pulsen', 8)

texto
substr(texto, start = 09, stop = 18)
?substr #ajuda

#contar
nchar(texto)

#maiscula e minuscula
tolower(texto)
toupper(texto)

#split 
strsplit(texto, NULL)
strsplit(texto, " ")

#detectando padroes
string1 <- "13 de junho 2021"
string2 <- "10 de junho 20201"
padrao <- 'junho 2021'
grepl(pattern = padrao, x = string1)
grepl(pattern = padrao, x=string2)
