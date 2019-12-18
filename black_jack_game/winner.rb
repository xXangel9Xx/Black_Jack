def winner(value_player,value_crupier)
   value_player_total = value_player.sum
  value_crupier_total = value_crupier.sum
  
 ganador =  if value_player_total >  value_crupier_total
             "Gana el jugador"
            elsif value_player_total < value_crupier_total
             "Gana crupier"
            elsif value_player_total == value_crupier_total
             "Gana crupier"
            elsif value_player_total > 21
             "Gana crupier"
            elsif value_crupier_total > 21 
             "Gana el jugador"
            end
   ganador
end