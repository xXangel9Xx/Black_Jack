def bet(player,crupier) 
    apuesta = 0
    loop do 
    yield
    respuesta = gets.chomp.to_i
    
apuesta =   if respuesta > player[:money]
             puts  "Cantidad no disponible"
            elsif respuesta == player[:money]
              respuesta
            elsif respuesta <= player[:money]
              respuesta
            end
         break if  apuesta == respuesta
     end
     apuesta
end