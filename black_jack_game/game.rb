require_relative 'presentation'
require_relative 'player'
require_relative 'initial_player_money'
require_relative 'letters'# cartas 
require_relative 'card_value' # valor de las cartas 
require_relative 'shuflle_player'#este barajea y da la carta al jguador
require_relative 'shuflle_crupier'# este barajea y da al carta a la casa
require_relative 'show_letters'
require_relative 'game_table'

def game
   presentation
   player = {}
   crupier = {}

   player[:name]  = create_player()do puts "Introduzca el nombre de su avatar" end

   player[:money] = initial_player_money() do puts "Introduzca la cantidad inicial con la que desea jugar" end
      
   #////////// el dinero de la casa siempre sera igual que el del jugador

   crupier[:money] = player[:money]

   #////////// cartas

   letter = []
   value_player = []
   shuflle_cart_player = []
    
   letter = letters(letter) #esto crea las cartas
   #//////////// cartas del jugador

   shuflle_cart_player << shuflle_player(letter) #esto barajea las cartas y te devuelve un string que es la carta que te toco interesante OJO

   show_letters_player = show_letters(shuflle_cart_player) #muestra las cartas del jugador 
   
   value_player << card_value(shuflle_cart_player) #esto devuelve el valor de las carta
   
  #///////////////////////cartas del crupier 

  shuflle_cart_crupier = []

  value_crupier = []

  shuflle_cart_crupier << shuffle_crupier(letter) #esto barajea las cartas y te devuelve un string que es la carta que te toco interesante OJO

  show_letters_crupier = show_letters(shuflle_cart_crupier) #muestra las cartas del crupier

  value_crupier << card_value(shuflle_cart_crupier) #esto devuelve el valor de las cartas

  #//////////// aqui acaba el peo de las cartas
  #//////////// mesa
  game_table(player , show_letters_player , value_player, crupier,show_letters_crupier, value_crupier )


end
game