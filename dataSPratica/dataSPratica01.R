getwd()
setwd("/home/jonhsel/RFundamentos/part1")
ls
clear

#instlando pacotes
install.packages("readr")
install.packages("data.table")
library(readr)
#install.packages(dplyr)
library(dtplyr)
library(ggplot2)
library(readr)
library(scales)
library(data.table)

#carregando dados com
#read.csv2()
system.time(df_teste_1 <- read.csv2("arquivo"))

#read.table()
system.time(df_teste_2 <- read.table("arquivo"))

#fread (este é mais rápido)
system.time(df <- fread("TemperaturasGlobais.csv"))

head(df)

#criando subsets
#df com apenas cidades brasileiras
cidadeBrasil <- subset(df, Country == 'Brazil')
cidadeBrasil
head(cidadeBrasil)
#exclusão de valores nulos
cidadeBrasil <- na.omit(cidadeBrasil)
nrow(cidadeBrasil)
#antes o valor era 475580
#dimensoes do dataset
dim(cidadeBrasil)



#===================
#Organizaão de dados
#===================

#organizando o formato das datas
cidadeBrasil$dt <- as.POSIXct(cidadeBrasil$dt, format='%Y-%m%d')

#criar a coluna mes
cidadeBrasil$Month <- month(cidadeBrasil$dt)
dim(cidadeBrasil) #antes eram 7; agora 8

#criar a coluna ano
cidadeBrasil$Year <- year(cidadeBrasil$dt)
dim(cidadeBrasil) #agoora, 9 colunas



#=====================================
#criando subsets da cidade de são luis
#=====================================

#visualização de dados com filtro
cidadeBrasil[City == 'São Luís']

#cirando subset próprio para são luís
?subset
#slz <- subset(cidadeBrasil$City == 'São Luís')
slz <- subset(cidadeBrasil, City == 'São Luís')
head(slz)
slz

#novo subset com apenas alguns anos de são slz
slz <- subset(slz, Year %in% c(1845, 1850, 1875, 1900, 1925, 1950, 1975, 2000, 2010, 2013))
slz


#=====================================
#construção de gráficos
#=====================================
p_slz <- ggplot(slz, aes(x = Month, y= AverageTemperature, color = as.factor(Year)))+
  geom_smooth(se = FALSE, fill = NA, size = 2) + 
  theme_light(base_size = 20) + 
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete("")+
  ggtitle("Temperatura Média ao longo das décadas em São Luís")+
  theme(plot.title = element_text(size = 18))

#plotando
p_slz
