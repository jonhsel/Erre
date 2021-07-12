# Funcoes apply

# list, numeric, character - lapply ou sapply
# matrix, data.frame - by ou tapply
# Operacções por linha- apply

#usando lista
lista1 <- list(a = (1:10), b = (45:75))
lista1

#Calculando o total de elementos com o for
valor_a = 0
valor_b = 0

for (i in lista1$a){
  valor_a = valor_a + i
}

for (i in lista1$b){
  valor_b = valor_b + i
}

print(valor_a)
print(valor_b)

#Calculando somatorio acima com sapply (pq é uma lista)
?sapply
sapply(lista1, sum)

#calculando a media
sapply(lista1, mean)


#apply
#criando a matrix
 x <- matrix(rnorm(9), nrow=3, byrow = T)
x 

apply(x, 1, mean) #calculando a media por linha
apply(x, 2, mean) #calculando a media por coluna
apply(x, 1, plot)
