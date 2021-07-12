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

#===========================
#apply
#criando a matrix
 x <- matrix(rnorm(9), nrow=3, byrow = T)
x 

apply(x, 1, mean) #calculando a media por linha (number 1)
apply(x, 2, mean) #calculando a media por coluna (numer 2)
apply(x, 1, plot)

#============================
#Data Frame
escola <- data.frame(Aluno =c('Alan', 'Alice', 'Alana', 'Aline'),
                     Matematica = c(90, 80, 70, 60),
                     Geografia = c(100, 85, 96, 78),
                     Quimica = c(74, 85, 98, 77))

escola
#acessando a coluna
escola$Geografia

#Calculando a media por aluno
#criar uma nova coluna com valores NA
escola$Media = NA
escola

#atribuir os valores na coluna media
escola$Media = apply(escola[, c(2,3,4)], 1, mean)
#escola[, c(2,3,4)] = siginifca que pega todas as linhas
# e as colunas 2, 3 e 4
escola

#Arredondando os valores da coluna media
escola$Media = round(escola$Media)
escola


#======================
#tapply vs sqldf
install.packages('sqldf')
require(sqldf)

escola2 <- data.frame(Aluno = c('Alan', 'Alana', 'Aline', 'Alaor', 'Alan', 'Alana', 'Aline', 'Alaor'),
                      Semestre = c(1, 1, 1, 1, 2, 2, 2, 2),
                      matematica = c(90, 87, 88, 98, 78, 96, 99, 88),
                      Geografia = c(100, 87, 98, 78, 96, 55, 88, 74),
                      Quimica =   c(78, 65, 89, 45, 79, 99, 96, 97))
escola2

sqldf("select Aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by Aluno ")
#utilizando o tapply
tapply(c(escola2$matematica), escola2$Aluno, sum)


##############
#by
sqldf("select aluno, sum(matematica) from escola2 group by semestre")
by(escola2[, c(2,3,4)], escola2$Semestre, colSums)
