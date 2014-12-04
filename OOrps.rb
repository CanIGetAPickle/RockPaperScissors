class Player
  attr_accessor :choice
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

class Human < Player
  def choose_gesture
    begin
      puts ">>> Enter a letter: [R]ock, [P]aper, [S]cissors"
      player_choice = gets.chomp.upcase

      if player_choice == "P"
        self.choice = "Paper"
      elsif player_choice == "R"
        self.choice = "Rock"
      elsif player_choice == "S"
        self.choice = "Scissors"
      else
        puts ">>> Sorry, that's not an option!"
      end 
    end until player_choice == "P" || player_choice == "R" || player_choice == "S"
  end
end

class Computer < Player  
  def choose_gesture
    self.choice = ["Rock", "Paper", "Scissors"].sample
  end
end

class Game
  attr_reader :player, :computer
  
  def initialize
    @player = Human.new("You")
    @computer = Computer.new("The computer")
  end
  
  def display_winning_message(winning_choice)
    case winning_choice
    when "Paper"
      puts ">>> Paper covers Rock!"
    when "Rock"
      puts ">>> Rock damages Scissors!"
    when "Scissors"
      puts ">>> Scissors cuts Paper!"
    end
  end

  def compare_gestures
    if player.choice == computer.choice
      puts ">>> It's a tie!"
    elsif (player.choice == "Paper" && computer.choice == "Rock") || (player.choice == "Rock" && computer.choice == "Scissors") || (player.choice == "Scissors" && computer.choice == "Paper")
      display_winning_message(player.choice)
      puts ">>> You won!"
    else
      display_winning_message(computer.choice)
      puts ">>> Computer won!"
    end
  end
  
  def play
    begin
      player.choose_gesture
      puts ">>> #{player.name} chose #{player.choice}."
      computer.choose_gesture
      puts ">>> #{computer.name} chose #{computer.choice}."
      compare_gestures
      puts "::: Play again? (Y/N) :::"
      play_again = gets.chomp.upcase
    end until play_again != "Y"
  end
end

game = Game.new.play