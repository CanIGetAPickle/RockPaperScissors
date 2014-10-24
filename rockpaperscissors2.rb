puts "***** Welcome to Rock, Paper, Scissors v1.1! *****"

play_again = "Y"

until play_again != "Y"
  begin
    puts ">>> Choose one: Rock, Paper, Scissors"
    
    player_choice = gets.chomp.capitalize

    computer = Random.rand(1..3)
    
    if computer == 1
      computer = "Paper"
    elsif computer == 2
      computer = "Rock"
    else
      computer = "Scissors"
    end

    who_picked_what = ">>> You picked #{player_choice} and the computer picked #{computer}."

    if player_choice == computer
      puts ">>> You both picked #{player_choice}!"
      puts ">>> It's a tie!"
    elsif (player_choice == "Rock" && computer == "Scissors") || (player_choice == "Scissors" && computer == "Paper") || (player_choice == "Paper" && computer == "Rock")
      puts who_picked_what
      puts ">>> #{player_choice} beats #{computer}!"
      puts ">>> You win!"
    elsif (player_choice == "Scissors" && computer == "Rock") || (player_choice == "Paper" && computer == "Scissors") || (player_choice == "Rock" && computer == "Paper")
      puts who_picked_what
      puts ">>> #{computer} beats #{player_choice}!"
      puts ">>> Computer wins!"
    else
      puts ">>> Sorry, that's not an option!"
    end

    puts "::: Play again? (Y/N) :::"
    play_again = gets.chomp.upcase

  end
end

puts "***** Thanks for playing - bye! *****"