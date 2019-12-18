require_relative 'presentation'
require_relative 'player'
require_relative 'initial_player_money'
require_relative 'letters'# cartas 
require_relative 'card_value' # valor de las cartas 
require_relative 'shuflle_player'#este barajea y da la carta al jguador
require_relative 'shuflle_crupier'# este barajea y da al carta a la casa
require_relative 'show_letters'
require_relative 'game_table'
require_relative 'winner'
require_relative 'bet'
require_relative 'menu'

def game
  presentation
  menu
 loop do  
   what_would_you_like_to_do = gets.chomp.to_i
 case  what_would_you_like_to_do
   
  when 1
    system("clear")
    presentation
   player = {}
   crupier = {}

   player[:name]  = create_player()do puts "Introduzca el nombre de su avatar" end

   player[:money] = initial_player_money() do puts "Introduzca la cantidad inicial con la que desea jugar" end
      
   #////////// el dinero de la casa siempre sera igual que el del jugador

   crupier[:money] = player[:money]
   system ("clear")
   #////////// apuesta del crupier
   bet_to_play_crupier = 0
   bet_to_play = []
   #////////// cartas
   letter = []
   value_player = []
   shuflle_cart_player = []
   #////////// valores del crupier 
   shuflle_cart_crupier = []
   win = ""
   value_crupier = []
   #////////// fin de valores del crupier
   letter = letters(letter) #esto crea las cartas
   #//////////// cartas del jugador
   loop do
    loop do
        presentation
         shuflle_cart_player << shuflle_player(letter) #esto barajea las cartas y te devuelve un string que es la carta que te toco interesante OJO

         show_letters_player = show_letters(shuflle_cart_player) #muestra las cartas del jugador 
   
         value_player << card_value(shuflle_cart_player) #esto devuelve el valor de las carta
   
         #///////////////////////cartas del crupier 
         #//////////////////////Cuanto desea apostar
         bet_to_play << bet(player,crupier) do puts "cuanto desea apostar" end 
         bet_to_play_crupier = bet_to_play 
         #//////////////////////
          shuflle_cart_crupier << shuflle_crupier(letter) #esto barajea las cartas y te devuelve un string que es la carta que te toco interesante OJO

          show_letters_crupier = show_letters(shuflle_cart_crupier) #muestra las cartas del crupier

          value_crupier << card_value(shuflle_cart_crupier) #esto devuelve el valor de las cartas
          game_table(player , show_letters_player , value_player, crupier,show_letters_crupier, value_crupier, win, bet_to_play, bet_to_play_crupier )
              puts "¿Desea saber quien gano?"
                opcion = gets.chomp
                opcion.capitalize!
          win  =    if opcion == "Si"
                  system("clear")
                  presentation
                  winner(value_player,value_crupier)
                end
            #//////////// aqui acaba el peo de las cartas
          #//////////// mesa
          system("clear")
          presentation
          game_table(player , show_letters_player , value_player, crupier,show_letters_crupier, value_crupier,win, bet_to_play , bet_to_play_crupier)
          puts "¿Desea tomar otra carta?"
          respuesta = gets.chomp
          respuesta.capitalize!
          system("clear")
          
      break if respuesta == "No" || crupier[:money] == 0 || player[:money] == 0
    end
    puts "¿Desea dejar de jugar?"
    respuesta_salida = gets.chomp
    respuesta_salida.capitalize!
   break if respuesta_salida == "Si"
  end
  when 2
puts "En el BlackJack cada jugador juega contra la banca. El objetivo del 
juego es conseguir sumar 21 puntos o al menos conseguir sin pasarse un valor 
más cercano a 21 que el crupier. Los valores de las cartas en el BlackJack son 
los siguientes: las cartas del 2 al 10 valen su valor, las figuras valen 10 y 
el AS vale 1 u 11 dependiendo de lo que le convenga al jugador."

puts "La jugada máxima del juego es “BlackJack”, un jugador tendrá “BlackJack” 
cuando sus dos cartas iniciales sumen 21, es decir, sean un AS y una carta con valor 
10 (10 o cualquier figura). 
La suma de 21 con más de dos cartas no es “BlackJack”"
puts "                                  ¿Que opcion desea tomar                                                   "
  when 3
puts"Al inicio de la partida cada jugador deberá realizar su apuesta inicial, después de 
que todos los jugadores hayan realizados sus apuestas el crupier dirá “no va más” para cerrar 
la ronda de apuestas y empezar con el reparto de cartas. El crupier repartirá dos cartas descubiertas a cada jugador 
y una a sí mismo, también descubierta. Después del reparto de cartas el crupier le dará paso al jugador situado más a su 
izquierda para que juegue su mano, después de que este jugador juegue su mano, el crupier le dará paso al siguiente jugador 
y así sucesivamente hasta que finalmente sea el crupier quien juegue su mano." 
puts "Los jugadores que se queden más lejos de 21 que el crupier o se hayan 
pasado pierden sus apuestas. Los jugadores que empaten con el crupier no ganan 
ni pierden, recuperan su apuesta. Las apuestas ganadoras con la jugada BlackJack 
se pagan 3 x 2 (que es lo mismo que decir 1,5 x 1), el resto de apuestas ganadoras, jugadores que 
se hayan quedado más cerca de 21 que el crupier, se pagaran 1 x 1"
puts "                                   ¿Que opcion desea tomar                                                   "
when 4  
  break if what_would_you_like_to_do == 4
 end
end

end
game