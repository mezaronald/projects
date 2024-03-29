##### Cargando la data #####
setwd("C:/Users/USER/Documents/pwt")
data<-read.csv("C:/Users/USER/Documents/pwt/finlandia.csv")
attach(data)

##### PBI PPP per c�pita #####
ppp<-cgdpe/pop
head(ppp)
tail(ppp)

#### representaci�n gr�fica #####

plot(year, ppp, main = "Evoluci�n del PBI per c�pita PPA - Finlandia (1950-2019)",
        xlab = "A�o", ylab = "PBI per c�pita PPA")

#### Identificar gr�ficamente periodos de largo crecimiento (o decrecimiento) econ�mico ####
# Se observa un crecimiento sostenido hasta mediados de la d�cada de 1970,
# donde habr�a una estancamiento hasta finales de la misma d�cada.
# El PBI per c�pita PPA finalnd�s seguir�a creciendo sostenidamente hasta comenzar
# la d�cada de 1990, donde decrecer�a hasta mediados de la misma.
# Nuevamente volver�a a crecer sostenidamente hasta inicios de los a�os 2000,
# donde se observa un nuevo estancamiento de 3 periodos, tras los cuales seguir�a creciendo
# sostenidamente hasta el a�o 2008. desde entonces, el producto finland�s ha
# tanto decrecido (2009, 2012-14) y rebotado (2010-12) (2015-19),

#### Tasa de crecimiento anual promedio ####
crec<-100*diff(log(ppp))
head(crec)
max(crec)
min(crec)
mean(crec)
yearplusone<-year[2:70]
plot(yearplusone,crec, main = "Crecimiento del PBI per c�pita PPA - Finlandia (1950-2019)",
     xlab = "A�o", ylab = "Tasa de crecimiento (%)")


#### Seg�n la �ltima tasa calculada 
####�En cu�ntos a�os la poblaci�n del pa�s duplicar� su PBI per c�pita?####


log(2)/log(1+tail(crec/100,1))

#Rpta: 93 a�os  

  


