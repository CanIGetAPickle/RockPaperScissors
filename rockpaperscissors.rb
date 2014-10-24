puts
puts "***** Welcome to Rock, Paper, Scissors v1.0! *****"

play_again = "Y"

until play_again != "Y"
	begin
		puts
		puts ">>> Enter a letter: [R]ock, [P]aper, [S]cissors"
		player_choice = gets.chomp.upcase

		if player_choice == "P"
			player_choice = "Paper"
		elsif player_choice == "R"
			player_choice = "Rock"
		elsif player_choice == "S"
			player_choice = "Scissors"
		else
			puts
			puts ">>> Sorry, that's not an option!"
		end

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
			puts
			puts ">>> You both picked #{player_choice}!"
			puts ">>> It's a tie!"
		elsif player_choice == "Rock" && computer == "Scissors"
			puts
			puts who_picked_what
			puts ">>> Rock damages Scissors!"
			puts ">>> You win!"
		elsif player_choice == "Scissors" && computer == "Rock"
			puts
			puts who_picked_what
			puts ">>> Scissors are damaged by Rock!"
			puts ">>> Computer wins!"
		elsif player_choice == "Scissors" && computer == "Paper"
			puts
			puts who_picked_what
			puts ">>> Scissors cuts Paper!"
			puts ">>> You win!"
		elsif player_choice == "Paper" && computer == "Scissors"
			puts
			puts who_picked_what
			puts ">>> Paper is cut by Scissors!"
			puts ">>> Computer wins!"
		elsif player_choice == "Paper" && computer == "Rock"
			puts
			puts who_picked_what
			puts ">>> Paper covers rock!"
			puts ">>> You win!"
		else 
			puts
			puts who_picked_what
			puts ">>> Rock is covered by paper!"
			puts ">>> Computer wins!"
		end

		puts
		puts "::: Play again? (Y/N) :::"
		play_again = gets.chomp.upcase

	end
end

puts
puts "***** Thanks for playing - bye! *****"