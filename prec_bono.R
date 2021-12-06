# Una función que arroje el precio de un bono el día de su emisión
precio_bono = function(anuali, infefe,tdcto,diferencia){
  tcup = (((1+infefe)*(1+(diferencia/10000)))-1)
  primcupon = (100*tcup)/(1+tdcto)
  for (i in (2:(anuali-1))) {
    primcupon <- primcupon + (100*tcup)/((1+tdcto)^(i))
  }
  return(primcupon+((100*(1+tcup))/((1+tdcto^(anuali)))))
}
precio_bono(6,0.05,60,0.05)