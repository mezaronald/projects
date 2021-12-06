# Convertir una tasa de interés efectiva anual a nominal anual
tasanominal = function(tasaefec, modalidad, periodicidad){
  tasa=((1+tasaefec)^(periodicidad/12))-1
  if(modalidad=="anticiapda"){
    tasa=tasa/(1-tasa) 
  }
  tasanom=tasa*(360/periodicidad)
  return(tasanom)
}

tasanominal(0.10,"vencida",18)