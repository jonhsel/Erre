### DATAFRAME

#Criando Dataframe
df <- data.frame()
class(df)
df

#Criando vetores vazios
nomes <- character()
idades <-numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

#criando vetores
pais = c("EUA", "Brasil", "Suecia", "Portugal")
nome = c("Jonh", "Pedro", "Aline", "Mary")
altura = c(1.78, 1.80, 1.52, 1.71)
codigo = c(500, 236, 451, 986)

#criando dataframe de diversos valores
pesquisa = data.frame(c(pais, nome, altura, codigo))
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa

#adicionando mais uma coluna
olhos = c('castanhos', 'pretos', 'azuis', 'verdes')
pesq = cbind(pesquisa, olhos)
pesq

#informacoes
str(pesq)
dim(pesq)
length(pesq)

#obtendo vetor do dataframe
pesq$nome
pesq$olhos

#extraindo valor
pesq[1,1]
pesq[2,3]
pesq[2,1]
pesq[1,2]

nrow(pesq)
ncol(pesq)


#primeiros e ultimos elementos do data frame
head(pesq)
tail(pesq)


#filtros
pesq(altura > 1.79)
pesq[altura > 1.79,]
pesq[altura > 1.75, c('nome', 'pais')]

#nomear
names(pesq) <- c("País", "Nome", "Altura", "Código", "Olhos")
pesq

?read.csv
#lendo csv
setwd("/home/jonhsel/RFundamentos/part1")
df2 = data.frame(read.csv(file = 'dframe.csv', header = TRUE, sep = ",")
                 class(df2)
df2                 
dim(df2)

df2$Diabete
df2$Admdate

plot(df2$Admdate)
