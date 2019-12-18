require 'colorize'
def game_table(player , show_letters_player , value_player, crupier, show_letters_crupier, value_crupier )

puts " #{player[:name]}                                Crupier"
puts " Su dinero es:#{player[:money]}$                 Su dinero es:#{crupier[:money]}$"
puts "                                                                   "
puts "                                                                   "
puts "   ---------------------------------                               "
puts "   ---------------------------------                               "
puts "   ---------------------------------                               "
puts "   ---------------------------------                               "
puts "   ---------------------------------                               "
puts " Carta de #{player[:name]} #{show_letters_player}      Carta de Crupier #{show_letters_crupier}            "
puts "La puntuacion es: #{value_player}                       la puntuacion es: #{value_crupier}"
end

