#Fatores


#criar vetor
vetor1 <- c("Masculino","Feminino", "Feminino", "Masculino", "Feminino")
#inspecionando a classe do vetor
class(vetor1)
#imprindo o vetor
vetor1

#tranformando vetor de caracteres em fator
# e criando nova variável
fac_vetor1 <- factor(vetor1)
#inpecionando o fator
class(fac_vetor1)
#imprimindo o fator
fac_vetor1



#==============================
#VARIÁVEIS CATEGORICAS NOMINAIS
#==============================
#criando vetor
animais_vec <- c("zebra", "macaco", "leão", "pato", "rato-anão")
class(animais_vec)
animais_vec

#criando vetor
fac_animais_vec <- factor(animais_vec)
class(fac_animais_vec)
fac_animais_vec
#função level
levels(fac_animais_vec)

#mais exemplos
data = c(1,2,3,2,1,1,3,3,2,2,1,1,2,3)
fdata = factor(data)
fdata
#reatribuindo elementos dos fatores
rdata = factor(data, labels = c("I","II", "III"))
#muito util para reatribuição de labels
fdata
rdata

#faotres não ordenados
set1 <- c("AA", "B", "C", "CC", "BA", "CA")
set1
#quando um fator, ele eh criado não ordenado

f.set1 = factor(set1)
f.set1
class(f.set1)
#pergunta se o fator esta ordenado
is.ordered(f.set1)

#ordenando o fator
o.set1 <- factor(set1,
                 levels = c("B", "CC", "AA", "C", "BA", "CA"),
                 ordered = TRUE)
o.set1
is.ordered(o.set1)

#TRANDFORMAR VARIAVEIS CATEGORICAS EM NUMERICA
as.numeric(o.set1)
table(o.set1)

#FATORES E DATAFRAMES
setwd("/home/jonhsel/RFundamentos/part1")
df <- read.csv2("etnias.csv", sep = ',')
df

#Ver o resumo do dataframe
str(df)
#obs: vemos que as variaveis 'Sexo' e 'Etnia' foram transformadas automaticamente
#em fatores e atribuído os valores numericos

#verificando os níveis da variável 'Etnia"
levels(df$Etnia)
#sumarizando os valores da variavel 'etnia'
summary(df$Etnia)

#plotar boxplot
plot(df$Idade~df$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')
#plotar pontos
plot(df$Idade, df$Etnia, xlab = 'Idade', ylab = 'Etnia', main = 'Idade por Etnia')

#transformar uma variavel inteiro em categorica
df$EstadoCivil.cat <-factor(df$Estado_Civil, labels = c('Solteiro', 'Casado', 'Divorciado'))
df
str(df)
