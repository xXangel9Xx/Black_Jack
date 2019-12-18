def card_value(shuflle_cart_player)
    puntuacion = 0
   puntuacion_player = shuflle_cart_player.last
     if puntuacion_player == "♦" || puntuacion_player == "♦" || puntuacion_player == "♦" || puntuacion_player == "♦"
       loop do 
        puts "Cuanto desea que valga esta carta 1 o 11"
        respuesta = gets.chomp.to_i     
           puntuacion = if respuesta == 1 
                          1 
                       elsif respuesta == 11 
                          11 
                       else 
                        puts "no existe"
                       end
        break if puntuacion == 1 || puntuacion == 11 
       end
      return  puntuacion
     elsif puntuacion_player == "2♥" || puntuacion_player == "2♦" || puntuacion_player == "2♣" || puntuacion_player == "2♠"
      return puntuacion = 2
     elsif puntuacion_player == "3♥" || puntuacion_player == "3♦" || puntuacion_player == "3♣" || puntuacion_player == "3♠"
      return puntuacion = 3
     elsif puntuacion_player == "4♥" || puntuacion_player == "4♦" || puntuacion_player == "4♣" || puntuacion_player == "4♠"
      return  puntuacon = 4
     elsif puntuacion_player == "5♥" || puntuacion_player == "5♦" || puntuacion_player == "5♣" || puntuacion_player == "5♠"
      return puntuacion = 5
     elsif puntuacion_player == "6♥" || puntuacion_player == "6♦" || puntuacion_player == "6♣" || puntuacion_player == "6♠" 
      return puntuacion = 6
     elsif puntuacion_player == "7♥" || puntuacion_player == "7♦" || puntuacion_player == "7♣" || puntuacion_player == "7♠"
      return  puntuacion = 7
     elsif puntuacion_player == "8♥" || puntuacion_player == "8♦" || puntuacion_player == "8♣" || puntuacion_player == "8♠"
      return  puntuacion = 8
     elsif puntuacion_player == "9♥" || puntuacion_player == "9♦" || puntuacion_player == "9♣" || puntuacion_player == "9♠"
      return  puntuacion = 9
     elsif puntuacion_player == "10♥" || puntuacion_player == "10♦" || puntuacion_player == "10♣" || puntuacion_player == "10♠"
      return  puntuacion = 10
     elsif puntuacion_player == "J♥" || puntuacion_player == "J♦" || puntuacion_player == "J♣" || puntuacion_player == "J♠"
      return  puntuacion = 10
     elsif puntuacion_player == "Q♥" || puntuacion_player == "Q♦" || puntuacion_player == "Q♣" || puntuacion_player == "Q♠"
      return  puntuacion = 10
     elsif puntuacion_player == "K♥" || puntuacion_player == "K♦" || puntuacion_player == "K♣" || puntuacion_player == "K♠"
      return  puntuacion = 10
     end 
     puntuacion
 end
