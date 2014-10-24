CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

puts "***** Welcome to Rock, Paper, Scissors v1.1! *****"

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper covers Rock!"
  when 'r'
    puts "Rock damages Scissors!"
  when 's'
    puts "Scissors cuts Paper!"
  end
end

play_again = "Y"

until play_again != "Y"
  begin
      puts "Pick one: (R/P/S):"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "It's a tie!"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "You won!"
  else
    display_winning_message(computer_choice)
    puts "Computer won!"
  end

    puts "::: Play again? (Y/N) :::"
    play_again = gets.chomp.upcase

  end


puts "***** Thanks for playing - bye! *****"