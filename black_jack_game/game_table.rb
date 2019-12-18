require 'colorize'
def game_table(player , show_letters_player , value_player, crupier, show_letters_crupier, value_crupier, win , bet_to_play, bet_to_play_crupier )

    if bet_to_play.length > 0
        bet_to_play = bet_to_play.sum
    end
    if bet_to_play_crupier.length > 0
        bet_to_play_crupier = bet_to_play_crupier.sum
    end
    if win == "Gana el jugador"
        crupier[:money] = crupier[:money] - bet_to_play_crupier  
        player[:money]  =  player[:money] + bet_to_play_crupier
    end
    if win == "Gana crupier"
        player[:name]  = player[:name] - bet_to_play
        crupier[:money] = crupier[:money] + bet_to_play
    end
puts " #{player[:name]}                                Crupier"
puts " Su dinero es:#{player[:money]}$                 Su dinero es:#{crupier[:money]}$"
puts " apuesta #{bet_to_play}$                          apuesta  #{bet_to_play_crupier}$                    "
puts "                                                                   "
puts "                 ---------------------------------                               "
puts "                 ---------------------------------                               "
puts "                 ---------------------------------                               "
puts "                 ---------------------------------                               "
puts "                 ---------------------------------                               "
puts "Carta de #{player[:name]} #{show_letters_player}                      Carta de Crupier #{show_letters_crupier.first}            "
puts "La puntuacion es: #{value_player}                       la puntuacion es: #{value_crupier.first}"
puts "                          #{win}                                               "
end

