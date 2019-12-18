def letters(letter)
     letter = ["♦","♦","♦","♦",
             "2♥","2♦","2♣","2♠",
             "3♥","3♦","3♣","3♠",
             "4♥","4♦","4♣","4♠",
             "5♥","5♦","5♣","5♠",
             "6♥","6♦","6♣","6♠",
             "7♥","7♦","7♣","7♠",
             "8♥","8♦","8♣","8♠",
             "9♥","9♦","9♣","9♠",
           "10♥","10♦","10♣","10♠",
             "J♥","J♦","J♣","J♠",
             "Q♥","Q♦","Q♣","Q♠",
             "K♥","K♦","K♣","K♠"]
            letter
end
=begin
def shuffle(letter)
 card = letter.shuffle!
 card.first
end 

def card_value(letter)
   puntuacion = 0
    if letter == "♦" || letter == "♦" || letter == "♦" || letter == "♦"
      loop do 
       puts "Cuanto desea que valga esta carga 1 o 11"
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
      puntuacion
    elsif letter == "2♥" || letter == "2♦" || letter == "2♣" || letter == "2♠"
      puntuacion = 2
    elsif letter == "3♥" || letter == "3♦" || letter == "3♣" || letter == "3♠"
      puntuacion = 3
    elsif letter == "4♥" || letter == "4♦" || letter == "4♣" || letter == "4♠"
        puntuacon = 4
    elsif letter == "5♥" || letter == "5♦" || letter == "5♣" || letter == "5♠"
      puntuacion = 5
    elsif letter == "6♥" || letter == "6♦" || letter == "6♣" || letter == "6♠" 
      puntuacion = 6
    elsif letter == "7♥" || letter == "7♦" || letter == "7♣" || letter == "7♠"
       puntuacion = 7
    elsif letter == "8♥" || letter == "8♦" || letter == "8♣" || letter == "8♠"
       puntuacion = 8
    elsif letter == "9♥" || letter == "9♦" || letter == "9♣" || letter == "9♠"
       puntuacion = 9
    elsif letter == "10♥" || letter == "10♦" || letter == "10♣" || letter == "10♠"
       puntuacion = 10
    elsif letter == "J♥" || letter == "J♦" || letter == "J♣" || letter == "J♠"
       puntuacion = 10
    elsif letter == "Q♥" || letter == "Q♦" || letter == "Q♣" || letter == "Q♠"
       puntuacion = 10
    elsif letter == "K♥" || letter == "K♦" || letter == "K♣" || letter == "K♠"
       puntuacion = 10
    end 
    puntuacion
end

def baraja
    letter = []
    letter = letters(letter)

    card_player = shuffle(letter)

    card  = card_value(card_player)

  
end
baraja
=end