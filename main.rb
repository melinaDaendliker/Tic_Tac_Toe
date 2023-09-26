game = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
WINNING_SCENARIOS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def print_gameboard(game)
  puts "#{game[0]} | #{game[1]} | #{game[2]}"
  puts "---------"
  puts "#{game[3]} | #{game[4]} | #{game[5]}"
  puts "---------"
  puts "#{game[6]} | #{game[7]} | #{game[8]}"
end 

print_gameboard(game)

class Player
  # way to create palyers
  # ask to add input each round 
  # check if input is acceptable

end


# creaet two players 
# player 1 asked for user input
# check if input number is reasonable or not already used 
# print the board  
# check if someone wins
# player 2 is asked for input 
# check if input number is reasonable or not already used
# check if someone wins 
# if someone wins return message which player won
# ask to play again 
# if yes delete the board and start new 
