
WINNING_SCENARIOS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
play_again = true


class Player
  attr_accessor :sign, :number

  def initialize(number, sign, game)
    @sign = sign
    @number = number
    @game = game
  end

  def get_placement
    good_position = false
    until good_position
      puts "Player #{number} choose a postion: "
      position = gets.to_i
      position -= 1
      if position.between?(0,8)
        if @game[position] == " "
          good_position = true
        else
          puts "This position is already occupied"
        end
      else 
        puts "Your input is too high or not a number"
      end
    end
    @game[position] = sign
  end

  def check_for_win(game, sign)
    WINNING_SCENARIOS.each {|scenario|
      if game[scenario[0]] == sign && game[scenario[1]] == sign && game[scenario[2]] == sign
        puts ""
        puts "Player #{number} is the Winner !! "
        puts ""
        return game_won = true
      end
    }
    return game_won = false
  end
end

def restart_game 
  puts "Do you want to play again? y/n "
  answer = gets.downcase.strip
  if answer == "n"
    return play_again = false
  elsif answer == "y"
    return play_again = true
  else
    restart_game
  end
end

def print_gameboard(game)
  puts ""
  puts "#{game[0]} | #{game[1]} | #{game[2]}"
  puts "---------"
  puts "#{game[3]} | #{game[4]} | #{game[5]}"
  puts "---------"
  puts "#{game[6]} | #{game[7]} | #{game[8]}"
  puts ""
end 

while play_again do
  game = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  game_won = false
  player1 = Player.new(1, "X", game)
  player2 = Player.new(2, "O", game)
  counter = 0
  until game_won do
    counter += 1
    player1.get_placement
    game_won = player1.check_for_win(game, "X")
    print_gameboard(game)
    if game_won
      break
    elsif counter == 5
      puts ""
      puts "It's a draw"
      puts ""
      break
    end
    player2.get_placement
    game_won = player2.check_for_win(game, "O")
    print_gameboard(game)
  end
  play_again = restart_game
end 













