##### Cargando la data #####
setwd("C:/Users/USER/Documents/pwt")
data<-read.csv("C:/Users/USER/Documents/pwt/finlandia.csv")
attach(data)

##### PBI PPP per cápita #####
ppp<-cgdpe/pop
head(ppp)
tail(ppp)

#### representación gráfica #####

plot(year, ppp, main = "Evolución del PBI per cápita PPA - Finlandia (1950-2019)",
        xlab = "Año", ylab = "PBI per cápita PPA")

#### Identificar gráficamente periodos de largo crecimiento (o decrecimiento) económico ####
# Se observa un crecimiento sostenido hasta mediados de la década de 1970,
# donde habría una estancamiento hasta finales de la misma década.
# El PBI per cápita PPA finalndés seguiría creciendo sostenidamente hasta comenzar
# la década de 1990, donde decrecería hasta mediados de la misma.
# Nuevamente volvería a crecer sostenidamente hasta inicios de los años 2000,
# donde se observa un nuevo estancamiento de 3 periodos, tras los cuales seguiría creciendo
# sostenidamente hasta el año 2008. desde entonces, el producto finlandés ha
# tanto decrecido (2009, 2012-14) y rebotado (2010-12) (2015-19),

#### Tasa de crecimiento anual promedio ####
crec<-100*diff(log(ppp))
head(crec)
max(crec)
min(crec)
mean(crec)
yearplusone<-year[2:70]
plot(yearplusone,crec, main = "Crecimiento del PBI per cápita PPA - Finlandia (1950-2019)",
     xlab = "Año", ylab = "Tasa de crecimiento (%)")


#### Según la última tasa calculada 
####¿En cuántos años la población del país duplicará su PBI per cápita?####


log(2)/log(1+tail(crec/100,1))

#Rpta: 93 años  

  


