# Write the logic that let the player  enter「0 ~ 2」
class Player
  def hand
    # Display "Sentences that require the player to enter 0 to 2".
    puts "Please enter a number."
    puts "0: Goo, 1: Choki, 2: Par"
    # Get what the player has entered in the variable "input_hand" and assign it.
      #Hint! Use the "gets method".
    player_hand = gets.to_i
    # If "input_hand" (acquired value) is either "0, 1, 2", it will escape from while, otherwise it will be repeated from the beginning.
      #Hint! Use "while" and "if".
    # Let's implement according to the example of the type after * * Be careful of commenting out when implementing
    # while true
      while true
        if player_hand == 0
          return 0
        elsif player_hand == 1
          return 1
        elsif player_hand == 2
          return 2
        else
          puts "Please input numbers between 0-2"
          puts "0: Goo, 1: Choki, 2: Par"
          # Get what the player has entered in the variable "input_hand" and assign it.
          player_hand  == gets.to_i
          # end if statement end
        end
        # end while statement end
      end
    end
end
# Write the logic that the enemy randomly generates a value of "0 ~ 2".
class Enemy
  def hand
    #Randomly output the values of goo, choki, and par
    enemy_hand = rand(3)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["Goo", "Choki", "Par"]
    puts "The opponent's hand is #{janken[enemy_hand]}."
      if player_hand == enemy_hand
        puts "Aiko"
        return true
      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
        puts "You win"
        return false
      else
        puts "You lose"
        return false
      end
  end
end
#Substitute the instantiated Player for the variable "player".
player = Player.new
# Assign an instantiation of Enemy to the variable "enemy".
enemy = Enemy.new
# Assign an instantiation of Janken to the variable "janken".
janken = Janken.new
# Assign "true" to the variable "next_game". * This is because the iterative process is executed while while forever unless "next_game" becomes "false".
next_game = true
# Let's implement according to the example of the type after * * Be careful of commenting out when implementing。
# while next_game
while next_game do
  next_game = janken.pon(player.hand, enemy.hand)
  # When "false" is returned in the execution result of rock-paper-scissors, this while is terminated. When "true" is returned, it repeats that number of times.
# end while statement end
end
