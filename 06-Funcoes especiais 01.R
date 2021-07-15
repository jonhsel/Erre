### UNLIST

list1 = list("a", 6, 3.5)
list1
class(list1)
#lembrando: lista é uma estrutura unidimensional
#de vários tipos de dados

#revertendo a lista para um vetor com a funcao UNLIST
unlist(list1)
class(list1)
#atribuindo em uma variavel
rev_list1 = unlist(list1)
rev_list1
class(rev_list1) #retornou um vetor de caracteres

list2 <- list(v1=6, v2 = list(285, 647), v3 = c(1.7, 37.1))
list2

unlist(list2)


# funcao do call
# a funcao do call aplica uma funcao a cada elemento da lista
# acho que é como a funcao map

?do.call
data <- list()
N <- 100

for (n in 1:N){
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}#aqui foi criado um dataframe e guardado numa lista

head(data)

do.call(rbind, data) #rbind une vetores
class(do.call(rbind, data))
#aqui foi revertido em dataframe


#lapply x do.call()
y <- list(1:5, 6:9, 7:10)
y

lapply(y, sum) 
#tendo a estrutura, aplica a funcao em cada estrutura(lista)

do.call(sum, y) 
#aplica a funcao a todos os elementos do objeto
